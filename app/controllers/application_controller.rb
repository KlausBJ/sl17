class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :check_login
  before_action :set_cm
  
  helper_method :current_clearance_levels
  helper_method :set_cm
  
  def set_cm
    if session[:member_id] && session[:member_id] != 0
      @cm = Member.find(session[:member_id])
    end
  end
  
  private
    def check_login
      if session[:member_id] == nil
        flash[:notice] = 'Log ind'
        redirect_to login_path
      end
    end

    def current_clearance_levels
      if session[:member_id]
        if session[:member_id] != 0
          member = Member.find(session[:member_id])
          if member.roles.map{|r| r.name.to_sym} != []
            return member.roles.map{|r| r.name.to_sym} 
          else
            return [:member]
          end
        else
          return [:guest]
        end
      else
        return [:pre_login]
      end
    end
    
    def unauthorized_access_redirection_path
      # Ensure an array of symbols
      # *** Should use member.clearance_levels, I guess...
      if session[:member_id] && session[:member_id] != 0
        member = Member.find(session[:member_id])
        clearance_levels = member.roles.map{|r| r.name.to_sym}
        if clearance_levels == []
          #clearance_levels = [:member]
        end
      else
        #clearance_levels = [:guest]
      end

      # Choose a redirection path
      #return login_path  if clearance_levels.include? :guest
      login_path
    end

end
