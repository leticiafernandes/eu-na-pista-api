class UserApiController < ApplicationController

	def find_events_by_user
		@user = User.find(params[:user_id]).events

		if @user
			render json: @user, status: :ok
		else
			render json: @user.errors, status: :internal_server_error
		end
	end

	def registration
		@user = User.new(user_params)
		
		if @user.save
	        render json: @user, status: :created
	    else
	        render json: @user.errors, status: :internal_server_error
	    end
	end

	def login
		@user = User.where(email: params[:email]).first()
		sign_in(User.find(@user.id), scope: :user)
		if user_signed_in?
			render json: @user, status: :created
		else
			render json: @user.errors, status: :internal_server_error
		end
	end

	def check_in
		@user = User.find(params[:user_id])
		@event = Event.find(params[:event_id])

		user_has_event = @user.events.find_by(id: @event.id)

		if user_has_event
			delete_events_user
			render json: 'destroyed', status: :ok
		elsif @user and @event
			@user.events << @event
			render json: 'created', status: :created
		else
			render json: @user.errors, status: :internal_server_error
		end
	end

	def delete_events_user
		EventsUser.connection.execute("delete from events_users where event_id = #{@event.id} and user_id = #{@user.id}")
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
