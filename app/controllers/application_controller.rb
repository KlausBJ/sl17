# Main controller
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :check_login
  # before_action :set_cm, except: [:check_login, :current_clearance_levels]

  helper_method :current_clearance_levels
  helper_method :set_cm

  private

  def check_login
    return unless session[:member_id].nil?
    flash[:notice] = 'Log ind'
    redirect_to login_path
  end

  def current_clearance_levels
    return session[:clearances].map{ |r| r.to_sym } if session[:clearances]
    return [:pre_login] if session[:member_id].nil?
    return [:guest] if session[:member_id].zero?
    member = Member.includes(:roles).find(session[:member_id])
    roles = member.roles
    return roles.map { |r| r.name.to_sym } if roles.any?
    [:member]
  end

  def unauthorized_access_redirection_path
    return login_path if session[:member_id].nil?
    return members_path if session[:member_id].zero?
    member_path(Member.find(session[:member_id]))
  end
end
