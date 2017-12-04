class HomeController < ApplicationController
	before_action :must_login, only: [:home]
	
	layout 'Plogin'
	
	def index	
	end

	def masuk
		user = User.find_by(username: params[:username])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to dashboard_path #"home"
		else
			redirect_to home_path, notice: ' username or password'
		end
	end

	def logout
		session[:user_id] = nil
		redirect_to home_path #"login"
	end
end