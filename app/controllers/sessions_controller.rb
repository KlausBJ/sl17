class SessionsController < ApplicationController
  skip_before_action :check_login
  
  def new
    session[:member_id] = nil
  end
  
  def create
    if params[:session][:username] == 'sommerlejr' && params[:session][:password] == 'kartoffelmel'
      guest_log_in
      redirect_to members_path
    else
      member = Member.find_by_number(params[:session][:username])
      if member && member.password && member.password.password.downcase == params[:session][:password].downcase
        log_in member
        unless member.invoices.any? # registers the email address as confirmed
          Invoice.create(member: member, paid: false)
        end
        redirect_to member_path(member)
      else
        flash.now[:notice] = "Medlemsnr. og adgangskode ikke korrekt!"
        render 'new'
      end
    end
  end
  
  def destroy
    session[:member_id] = nil
    redirect_to login_path
  end
end
