# Controller for members, the central class
class MembersController < ApplicationController
  let :admins,
      [:index, :edit, :show, :email, :generate_password, :update, :import]
  let :guests, [:index, :email, :generate_password, :update]
  let [:members, :testers], [:index, :show, :email, :generate_password, :update]

  before_action :set_member, only: [:show, :edit, :update, :destroy, :email]

  # GET /members
  def index
    @members = Member.all.order(:number)
    return unless params[:search]
    @members = Member.search(params[:search]).order('number ASC')
  end

  # GET /members/1
  def show
    if @member.password.nil?
      @member.generate_password
      @member.reload
    end
    @member.update_sold_out
    @activities = Activity.order(:starttime, :endtime).includes(:tickets).includes(:people)
    @person = Person.new
    @people = @member.people.includes(:tickets)
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
  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html do
          redirect_to @member, notice: 'Member was successfully created.'
        end
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /members/1
  def update
    respond_to do |format|
      if @member.update(member_params)
        @member.generate_password
        Membermailer.pwmail(@member).deliver_now
        if session[:member_id].zero?
          format.html do
            redirect_to login_path,
                        notice:
                        'Medlemsnr. og adgangskode er sendt til dig i en email.'
          end
        else
          format.html do
            redirect_to @member, notice: 'Email opdateret. '\
            'Medlemsnr. og adgangskode er sendt til dig i en email.'
          end
        end
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /members/1
  def destroy
    @member.destroy
    respond_to do |format|
      format.html do
        redirect_to members_url,
                    notice:
                    'Member was successfully destroyed.'
      end
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
