class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
		session[:user_id] = @user.id
	end	
	
	def create
		# {"utf8"=>"✓", "authenticity_token"=>"bSqT60OcBCJ53zyR7wxb5Lip90yXNSwAd1GLJMssqC8=", "user"=>{"name"=>"bob", "email"=>"bob@bob.bob", "password"=>"bobbob", "password_confirmation"=>"bobbob"}, "commit"=>"Sign up", "action"=>"create", "controller"=>"users"}
		# {"utf8"=>"✓", "authenticity_token"=>"bSqT60OcBCJ53zyR7wxb5Lip90yXNSwAd1GLJMssqC8=", "user"=>{"name"=>"bob", "email"=>"bob@bob.bob", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign up"}
		puts params 
		user = User.create(params[:user])
		redirect_to user_path(user)
	end

	def show
		@user = User.find()
	end



	def user_params
		# params[:user].permit 
	# user = User.create(params[:user].permit(:email, :password, :password_confirmation))
	end
end