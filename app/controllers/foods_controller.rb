class FoodsController < ApplicationController
  def index
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @nickname = current_user.nickname
    unless @food.save
      render :new
    end
  end

  def show
    @food = Food.find(params[:id])
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    if @food.update(food_params)
      redirect_to food_path
    else
      render :update
    end
  end
  private

  def food_params
    params.require(:food).permit(:name, :calorie, :protein, :fat, :saturated_fat, :n_6_fat, :n_3_fat, :cholesterol, :carbohydrate, :dietary_fiber, :vitamin_a, :vitamin_d, :vitamin_e, :vitamin_k, :vitamin_b1, :vitamin_b2, :vitamin_b6, :vitamin_b12, :vitamin_c, :niacin, :folate, :pantothenic, :biotin, :sodium, :potassium, :calcium, :magnesium, :phosphorus, :iron, :zinc, :copper, :manganese, :iodine, :selenium, :chromium, :molybdenum).merge(user_id: current_user.id)
  end

end
