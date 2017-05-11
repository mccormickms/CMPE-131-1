module SessionsHelper

	# Logs in user
	def log_in(user)
		session[:user_id] = user.id
	end

	#Returns current logged in user, if any
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	#returns true if user logged in, else false
	def logged_in?
		!current_user.nil?
	end

	def current_user?(user)
		user == current_user	
	end

	#logs out the current user
	def log_out
		session.delete(:user_id)
		@current_user = nil
	end
end
