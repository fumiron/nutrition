class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = current_user.nickname
    @food = Food.find(params[:id])
  end
end
