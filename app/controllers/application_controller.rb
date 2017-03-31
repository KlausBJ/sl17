# Main controller
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :check_login
  before_action :set_cm

  helper_method :current_clearance_levels
  helper_method :set_cm

  def set_cm
    return if session[:member_id].zero?
    @cm = Member.find(session[:member_id])
  end

  private

  def check_login
    return if !session[:member_id].nil?
    flash[:notice] = 'Log ind'
    redirect_to login_path
  end

  def current_clearance_levels
    return [:pre_login] if session[:member_id].nil?
    return [:guest] if session[:member_id].zero?
    member = Member.find(session[:member_id])
    return member.roles.map{ |r| r.name.to_sym } if member.roles.any?
    [:member]
  end

  def unauthorized_access_redirection_path
    return login_path if session[:member_id].nil?
    return members_path if session[:member_id].zero?
    member_path(Member.find(session[:member_id]))
  end
end
