class InvitationsController < ApplicationController
  
  def create 
    @user = User.find_by(email: params[:invitation][:email])
    @event = Event.find(params[:event_id]) 
    @invitation = @event.invitations.new(user_id: @user.id)
    @invitation.save
    redirect_to event_path(@event.event_id)
  end
end
