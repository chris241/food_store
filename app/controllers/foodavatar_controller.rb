class FoodavatarController < ApplicationController
  def create
    @food = Food.find(params[:food_id])
    @food.foodavatar.attach(params[:foodavatar])
    redirect_to(food_path(@food))
    end
end
