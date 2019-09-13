class FoodController < ApplicationController
	def index
		@foods = Food.all
	end 
	def show
     @food = Food.find(params[:id])
    session[:food_id]=params[:id]
	end	
	def create
		food = Food.create(name: params[:name][0],
			               duration: params[:address][0],  
			               price:params[:price],
			               description: params[:description][0],
			               image_url:params[:image_url]
			                )
	end	
end
