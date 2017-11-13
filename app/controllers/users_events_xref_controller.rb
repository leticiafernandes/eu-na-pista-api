class UsersEventsXrefController < ApplicationController
	
	def create
		byebug
		@user_event_xref = UserEventXref.new(event_params)
		byebug
		if @user_event_xref.save
			byebug
			render json: @user_event_xref
		else
			byebug
			render json: @user_event_xref.errors
		end
	end

	private

	def set_user_event
		@user_event_xref = UserEventXref.find(params[:id])
	end

	def event_params
		byebug
		params
		.require(:users_events_xref)
		.permit(
			:user_id,
			:event_id
		)
	end
end