class InvitationsController < ApplicationController

  def create
    @user = User.find_by(email: params[:invitation][:email])
    @event = Event.find(params[:event_id])
    #@attended_event = @event.invitations.create(attendee: current_user)
    # current_user.attended_events << @event
    @invitation = @event.invitations.new(user_id: @user.id)
    @invitation.save
    # if @attended_event.save
    redirect_to events_path, notice: 'Invitation sent!' if @invitation.save
    # else
    #   redirect_to events_path, alert: 'You can only attend once (Matrix! Perhaps!?)'
    # end
  end

  def show; end

  def destroy
    @event = Event.find(params[:id])
    # @attended_event = @event.invitations.create(attendee: current_user)
    current_user.attended_events.destroy(@event)
    respond_to do |format|
      format.html { redirect_to user_path(current_user), notice: 'Invitation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def invitation_params
    params.fetch(:invitation, {}).permit(:date, :user_id, :event_id)
  end
end
