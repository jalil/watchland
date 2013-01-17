class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
			if @user.save 
				redirect_to login_path, notice:  "Successfully registered"
			else
				render 'new', :error => " Regitration had some error"
			end
	end

		def show
			@user = User.find(params[:id])
			@posts = @user.posts
		end
end
