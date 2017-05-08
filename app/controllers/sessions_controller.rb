# Controller for sessions - used for login
class SessionsController < ApplicationController
  skip_before_action :check_login

  def new
    session[:member_id] = nil
  end

  def create
    if  params[:session][:username].casecmp('sommerlejr').zero? &&
        params[:session][:password].casecmp('kartoffelmel').zero?
      guest_log_in
      redirect_to members_path
    else
      member = Member.find_by_number(params[:session][:username])
      if  member && member.password &&
          member.password.password.casecmp(params[:session][:password]).zero?
        log_in member
        Invoice.create(member: member, paid: false) unless member.invoices.any?
        redirect_to member_path(member)
      else
        flash.now[:notice] = 'Medlemsnr. og adgangskode ikke korrekt!'
        render 'new'
      end
    end
  end

  def destroy
    session[:member_id] = nil
    session[:clearances] = nil
    redirect_to login_path
  end
end
