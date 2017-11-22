class UserApiController < ApplicationController

	def registration
		@user = User.new(user_params)
		
		if @user.save
	        render json: @user, status: :created
	    else
	        render json: @user.errors, status: :unprocessable_entity
	    end
	end

	def login
		@user = User.where(email: params[:email]).first()
		sign_in(User.find(@user.id), scope: :user)
		if user_signed_in?
			render json: @user, status: :created
		else
			render json: @user.errors, status: :unprocessable_entity
		end
	end

	def create_user_event
		@user = User.find(params[:user_id])
		@event = Event.find(params[:event_id])

		if @user and @event
			@user.events << @event
			render json: 'sucesso', status: :created
		else
			render json: @user.errors, status: :unprocessable_entity
		end
	end

	def find_events_by_user
		@user = User.find(params[:user_id]).events

		if @user
			render json: @user, status: :ok
		else
			render json: @user.errors, status: :unprocessable_entity
		end
	end

	private

	def user_params
		params
		.require(:user_api)
		.permit(
			:email,
			:password,
			:password_confirmation
		)
	end
end
