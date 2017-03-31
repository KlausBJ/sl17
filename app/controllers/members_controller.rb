# Controller for members, the central class
class MembersController < ApplicationController
  let :admins, [:index, :edit, :show, :email, :generate_password, :update, :import]
  let :guests, [:index, :email, :generate_password, :update]
  let :members, [:index, :show, :email, :generate_password, :update]

  before_action :set_member, only: [:show, :edit, :update, :destroy, :email]

  # GET /members
  # GET /members.json
  def index
    @members = Member.all.order(:number)
    return unless params[:search]
    @members = Member.search(params[:search]).order('number ASC')
  end

  # GET /members/1
  # GET /members/1.json
  def show
    if @member.password.nil?
      @member.generate_password
      @member.reload
    end
    @activities = Activity.all
    @person = Person.new
    @invoice = @member.invoices.where(paid: false).last if @member.invoices.any?
  end

  def email; end

  # GET /members/new
  def new
    @member = Member.new
  end

  # GET /members/1/edit
  def edit; end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to @member, notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      if @member.update(member_params)
        @member.generate_password
        Membermailer.pwmail(@member).deliver_now
        if session[:member_id].zero?
          format.html { redirect_to login_path, notice: 'Medlemsnr. og adgangskode er sendt til dig i en email.' }
        else
          format.html { redirect_to @member, notice: 'Email opdateret. Medlemsnr. og adgangskode er sendt til dig i en email.' }
        end
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    Member.import(params[:file])
    redirect_to root_url, notice: 'Medlemmer importeret.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_member
    @member = Member.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def member_params
    params.require(:member).permit(:number, :name, :email, :search)
  end
end
