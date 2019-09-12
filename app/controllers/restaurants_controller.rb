class RestaurantsController < ApplicationController
  def index
  	@restaurants = Restaurant.all
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
    session[:resto_id]=params[:id]
  end
end
