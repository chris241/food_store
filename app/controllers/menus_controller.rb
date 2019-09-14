class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def show
    @menu = Menu.find(params[:id])
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
