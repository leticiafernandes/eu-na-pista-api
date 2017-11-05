class UserApiController < ApplicationController

	def registration
		@user = User.new
		@user.email = params[:email]
		@user.password = params[:password]
		@user.password_confirmation = params[:password_confirmation]
		
		if @user.save
	        render json: @user,  status:  :created
	    else
	        render json: @user.errors, status: :unprocessable_entity
	    end
	end
end
