# Controller for invoices - payment magic here
class InvoicesController < ApplicationController
  let :admins, :all
  let [:members, :testers], [:sign, :new, :show, :pay]
  let :all, :callback

  skip_before_action :check_login, only: :callback
  # skip_before_action :set_cm, only: :callback

  before_action :set_invoice, only: [:show, :edit, :update, :destroy, :pay]
  skip_before_filter :verify_authenticity_token
  require 'quickpay/api/client'
  require 'openssl'
  require 'json'

  def sign(base, private_key)
    OpenSSL::HMAC.hexdigest('sha256', private_key, base)
  end

  # GET /invoices
  def index
    if params[:order]
      if params[:order] == 'name'
        @invoices = Invoice.all.includes(:member, :people, :tickets).order('members.name')
      else
        @invoices = Invoice.all.includes(:member, :people, :tickets).order(params[:order])
      end
    else
      @invoices = Invoice.all.includes(:member, :people, :tickets).order('members.number')
    end
  end

  # GET /invoices/1
  def show; end

  # GET /invoices/new
  def new
    @invoice = Invoice.new
  end

  # GET /invoices/1/edit
  def edit; end

  def pay
    if @invoice.total.zero?
      @invoice.paid = true
      @invoice.save
      redirect_to @invoice.member, notice: 'Faktura afsluttet.'
    else
      client = QuickPay::API::Client.new(
        api_key:
        'd06acc9603e326e83ea84a9737ce943d224ff4daacfc89bcc7b0de0dc95eecb8',
        headers: {
          'QuickPay-Callback-URL' =>
          "https://opgave.giftedchildren.dk/invoices/#{@invoice.id}/result"
        }
      )

      if @invoice.payment_link
        payment = client.get("/payments/#{@invoice.payment_link}")
        # link = {'url' => @invoice.payment_link}
      else
        # payment = client.get("/payments/#{payment['id']}")
        # payment ||= client.post('/payments', order_id: (1000 + @invoice.id),
        # currency: 'DKK')
        payment = client.post(
          '/payments',
          order_id: (1000 + @invoice.id),
          currency: 'DKK'
        )

        @invoice.payment_link = payment['id']
        @invoice.save
      end

      link = client.put(
        "/payments/#{payment['id']}/link",
        amount: @invoice.total * 100, framed: true, language: 'da',
        auto_fee: true, auto_capture: true, branding_id: 4455,
        continue_url: member_url(@invoice.member),
        cancel_url: member_url(@invoice.member)
      )

      redirect_to link['url']
    end
  end

  def callback
    # Assuming that you are using Rack - https://github.com/rack/rack
    request_body = env['rack.input'].read
    checksum = sign(
      request_body,
      'e9d66d600a92022a7c65d0796258d2e2fa77b38109af4175e58422356fe1b1c8'
    )

    return unless checksum == env['HTTP_QUICKPAY_CHECKSUM_SHA256']
    invoice = Invoice.find(JSON.parse(request_body)['order_id'].to_i - 1000)
    invoice.paid = JSON.parse(request_body)['accepted']
    invoice.save
  end

  # POST /invoices
  def create
    @invoice = Invoice.new(invoice_params)
    @invoice.paid = false

    respond_to do |format|
      if @invoice.save
        format.html { redirect_to @invoice, notice: 'Invoice created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /invoices/1
  def update
    respond_to do |format|
      if @invoice.update(invoice_params)
        format.html { redirect_to @invoice, notice: 'Invoice updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /invoices/1
  def destroy
    @invoice.destroy
    respond_to do |format|
      format.html { redirect_to invoices_url, notice: 'Invoice destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_invoice
    @invoice = Invoice.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def invoice_params
    params.require(:invoice).permit(:member_id, :paid, :order)
  end
end
