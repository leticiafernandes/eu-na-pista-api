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

	def login
		@user = User.where(email: params[:email]).first()
		if sign_in(User.find(@user.id), scope: :user)
			render json: @user,  status:  :created
		else
			render json: @user,  status:  :unprocessable_entity
		end
	end
end
