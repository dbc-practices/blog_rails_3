class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to user_path(user)
		else
			@error = "invalid login"
			puts @error
			render "new"
		end
	end

	def destroy
		session.clear
		redirect_to root_path
	end

end