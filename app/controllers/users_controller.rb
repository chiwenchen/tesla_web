class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create users_params
    redirect_to :back
  end

  private

  def users_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
