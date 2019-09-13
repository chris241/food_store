class RestaurantsController < ApplicationController
  def index
  	@restaurants = Restaurant.all
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
    session[:resto_id]=params[:id]
  end

  def create
  	 @restaurant = Restaurant.create(name: params[:name][0],
                                  address: params[:address][0],
                                  description: params[:description][0],
                                  image_url:params[:image_url]
                                  )
     if @restaurant.save
      redirect_to root_path
     else

     end
  end 


  

end
