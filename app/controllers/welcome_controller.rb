class WelcomeController < ApplicationController

	def index
		@user = session[:user_id]
	end
	
end