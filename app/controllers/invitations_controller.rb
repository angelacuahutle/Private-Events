class InvitationsController < ApplicationController
  def create
    @user = User.find_by(email: params[:invitation][:email])
    @event = Event.find(params[:event_id])
    @invitation = @event.invitations.new(user_id: @user.id)
    @invitation.save
  end

  private

  def invitation_params
    params.fetch(:invitation, {}).permit(:date, :user_id, :event_id)
  end
end
