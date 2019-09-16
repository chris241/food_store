class CommandsController < ApplicationController

  def new
    @command = Command.new
    @command = JoinComFood.new
  end

  def create
    @food = Food.find(session[:food_id])

	     @u=current_client.id
	     @f=session[:food_id]

	      if current_client.command == nil
	          @command = Command.create(client_id: @u)
	      end

	      @command = JoinComFood.create(command_id: current_client.command.id, food_id: @f, quantity: params[:quantity])
	      if @command.save
	          redirect_to  command_path(current_client.command.id)
	      else
	        puts "Try again"
	      end
  end

  def show
    @command = Command.find(params[:id])
    @tab = @command.foods
    @food = Food.find(session[:food_id])
    @totalCommands = current_client.command.foods
    @menu = session[:menu_id]

  end

  def destroy
  end
end
