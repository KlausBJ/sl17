# Helper for sessions
module SessionsHelper
  def guest_log_in
    session[:member_id] = 0
  end

  def log_in(member)
    session[:member_id] = member.id
    session[:clearances] = current_clearance_levels.map { |r| r.to_s }
  end
end
