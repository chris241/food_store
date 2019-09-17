class CommandsController < ApplicationController

  def new
    @command = Command.new
    @command = JoinComFood.new
    @food_id = params[:food_id]
    # @menu_id = params[:menu_id]
  end

  def create
    @food = Food.find(params[:food_id])

	     @u=current_client.id
	     @f=params[:food_id]

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
    @food_id = params[:food_id]
    @command = Command.find(params[:id])
    @tab = @command.foods
    @totalCommands = current_client.command.foods

    totalprice = 0
    @totalCommands.each do |food|
            @foodsprice = (food.price).to_i*(food.join_com_foods[0].quantity).to_i
            totalprice += @foodsprice
	          @sum = totalprice
	      end
    # @menu = params[:menu_id]



  end

  def destroy

    @command = Command.find(current_client.command.id)
	  @join = @command.join_com_foods[0].destroy
	    redirect_to command_path(current_client.command.id)

  end
end
