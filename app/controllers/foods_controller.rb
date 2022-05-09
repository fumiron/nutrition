class FoodsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @food = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @nickname = current_user.nickname
    if @food.save
      redirect_to "/users/#{current_user.id}"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @food.update(food_params)
      redirect_to food_path
    else
      render :update
    end
  end

  def destroy
    if @food.destroy
      redirect_to "/users/#{current_user.id}"
    end
  end

  def search
    @food = Food.search(params[:keyword])
  end

  

  private

  def food_params
    params.require(:food).permit(:name, :calorie, :protein, :fat, :saturated_fat, :n_6_fat, :n_3_fat, :cholesterol, :carbohydrate, :dietary_fiber, :vitamin_a, :vitamin_d, :vitamin_e, :vitamin_k, :vitamin_b1, :vitamin_b2, :vitamin_b6, :vitamin_b12, :vitamin_c, :niacin, :folate, :pantothenic, :biotin, :sodium, :potassium, :calcium, :magnesium, :phosphorus, :iron, :zinc, :copper, :manganese, :iodine, :selenium, :chromium, :molybdenum, :salt).merge(user_id: current_user.id)
  end

  def set_tweet
    @food = Food.find(params[:id])
  end

end
