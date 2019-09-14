class JoinComMenusController < ApplicationController
  def new
    @joinCM = JoinComMenu.new
  end

  def create
    @c=current_client.id
	     @m=session[:menu_id]


	        @command = Command.create(client_id: @c)
          @joinCM = JoinComMenu.create(command_id: Command.last.id, menu_id: @m, quantity: params[:quantity])


	      if @joinCM.save
	          redirect_to  join_com_menus_path
	      else
	        puts "Try again"
	      end
  end

  def index
    @joinCM = JoinComMenu.all
  end

  def destroy
  end
end
