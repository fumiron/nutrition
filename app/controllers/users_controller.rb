class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = current_user.nickname
    @favorites = Favorite.where(user_id: current_user.id)
  end
end
