class FavoritesController < ApplicationController
  def create
    @food = Food.find(params[:food_id])
    favorite = @food.favorites.new(user_id: current_user.id)
    if favorite.save
      redirect_to request.referer
    else
      redirect_to request.referer
    end
  end

  def destroy
    @food = Food.find(params[:food_id])
    favorite = @food.favorites.find_by(user_id: current_user.id)
    if favorite.present?
      favorite.destroy
      redirect_to request.referer
    else
      redirect_to request.referer
    end
  end
end
