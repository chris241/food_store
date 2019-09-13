class RestaurantsController < ApplicationController
  def index
  	@restaurants = Restaurant.all
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
    session[:resto_id]=params[:id]
  end

  def new
  	@restaurant = Restaurant.new()
  end

  def create
  	@restaurant = Restaurant.create(name: params[:name_id], address: params[:address_id], description: params[:description_id], image_url: params[:image_url_id])
  	if @restaurant.save
  		redirect_to "/"
  	end
  end

end
