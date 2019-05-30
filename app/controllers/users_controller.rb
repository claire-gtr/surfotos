class UsersController < ApplicationController

  def me
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :photo)
  end

end
