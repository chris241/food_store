class CommandsController < ApplicationController

  def new
    @command = Command.new
  end

  def create
    @food = Food.find(session[:food_id])

	     @u=current_user.id
	     @f=session[:food_id]

	      if current_user.command == nil
	          @command = Command.create(user_id: @u, quantity: params[:quantity])
	      end

	      @command = JoinComFood.create(command_id: current_user.command.id, food_id: @f)
	      if @cart.save
	          redirect_to  command_path(current_user.command.id)
	      else
	        puts "Try again"
	      end
  end

  def show
    @command = Command.find(params[:id])
  end

  def destroy
  end
end
