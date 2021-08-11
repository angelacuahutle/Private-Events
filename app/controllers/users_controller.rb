class UsersController < ApplicationController
  def idex
    @user = User.all
  end

  def show
    @user = User
    @upcoming_invitations = Invitation.all.to_come
    @past_invitations = Invitation.all.before_today
  end

  def new
    @user = User.new
  end

  def edit; end

  private

  def set_user
    @user = User.find(params[:email])
  end

  def user_params
    params.fetch(:user).permit(:name, :email)
  end
end
