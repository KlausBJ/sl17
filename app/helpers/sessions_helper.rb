module SessionsHelper
	def guest_log_in
		session[:member_id] = 0
	end
	
	def log_in(member)
		session[:member_id] = member.id
	end
end
