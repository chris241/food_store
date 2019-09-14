class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def show
    @show = Menu.find(params[:menu_id])
   #@category =session[:@menu.foods[0]]
  end

  def new
    @menu = Menu.news
  end

  def create
  end


  def update
  end

  def destroy
  end
end
