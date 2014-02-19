class UsersController < ApplicationController

	def index
	end

	def new
		@user = User.new
	end	
	
	def create
		# {"utf8"=>"✓", "authenticity_token"=>"bSqT60OcBCJ53zyR7wxb5Lip90yXNSwAd1GLJMssqC8=", "user"=>{"email"=>"bob@bob.bob", "password"=>"bobbob", "password_confirmation"=>"bobbob"}, "commit"=>"Sign up", "action"=>"create", "controller"=>"users"}

		# {"utf8"=>"✓", "authenticity_token"=>"bSqT60OcBCJ53zyR7wxb5Lip90yXNSwAd1GLJMssqC8=", "user"=>{"name"=>"bob", "email"=>"bob@bob.bob", "password"=>"bobbob", "password_confirmation"=>"bobbob"}, "commit"=>"Sign up", "action"=>"create", "controller"=>"users"}

		# {"utf8"=>"✓", "authenticity_token"=>"bSqT60OcBCJ53zyR7wxb5Lip90yXNSwAd1GLJMssqC8=", "user"=>{"name"=>"bob", "email"=>"bob@bob.bob", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign up"}
		puts params 
		# @user = User.create(params[:user].permit(:email, :password, :password_confirmation))
		@user = User.create(params[:user])
		redirect_to root_path
	end

	def user_params
		# params[:user].permit 
	# user = User.create(params[:user].permit(:email, :password, :password_confirmation))
	end
end