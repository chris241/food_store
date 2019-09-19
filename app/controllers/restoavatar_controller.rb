class RestoavatarController < ApplicationController
	def create
	@restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant.restoavatar.attach(params[:restoavatar])
    redirect_to(restaurant_path(@restaurant))
    end
end
