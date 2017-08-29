module SessionsHelper

	#Logs in the given user
	def log_in(user)
		session[:user_id] = user.id
	end

	#returns the current logged in user if one exists
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	#returns true if the user is loggen in. false otehrwise
	def logged_in?
		!current_user.nil?
	end
end
