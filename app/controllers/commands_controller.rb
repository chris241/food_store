class CommandsController < ApplicationController
 before_action :authenticate_client!
  def index
    @commands = Command.all
    @restaurants = Restaurant.all
    if gerant_signed_in?
      @restaurant = Restaurant.find_by(gerant_id: current_gerant.id)
    end
  end

  def new
    @command = Command.new
    @command = JoinComFood.new
    @food_id = params[:food_id]
    # @menu_id = params[:menu_id]
  end

  def create
    # @food = Food.find(params[:food_id])

    # @u=current_client.id
    # @f=params[:food_id]

    # # if current_client.command == nil
    # #     @command = Command.create(client_id: @u)
    # # end

    @command = Command.create(client_id: current_client.id)
    @command.save



    session[:note].each do |n|
      @food = Food.find(n[0])
      @joinCommand = JoinComFood.create(command_id: @command.id, food_id: @food.id, quantity: n[1])
      @joinCommand.save
    end

    session[:note] = []

    redirect_to  command_path(@command.id)

    # @command = JoinComFood.create(command_id: current_client.command.id, food_id: @f, quantity: params[:quantity])
    # @joinCommand = JoinComFood.create(command_id: @command.id, food_id: @f, quantity: params[:quantity])
    # if @joinCommand.save
    #     # redirect_to  command_path(current_client.command.id)
    #     redirect_to  command_path(@command.id)
    # else
    #   puts "Try again"
    # end
  end

  def note
    if(session[:note] == nil)
      session[:note] = []
      session[:note].push(
        [params[:food_id], params[:quantity] ]
      )
      @note = session[:note]
    else
      session[:note].push(
        [params[:food_id], params[:quantity] ]
      )
      @note = session[:note]
    end

    p "#################"
    p session[:note]

  end

  def show
    @command = Command.find(params[:id])
    @tab = @command.foods
    # @totalCommands = current_client.command.foods
    @totalCommands = @tab

    totalprice = 0
    @totalCommands.each do |food|
        @foodsprice = (food.price).to_i*(food.join_com_foods[0].quantity).to_i
        totalprice += @foodsprice
	     @sum = totalprice
	   end

  def paiement
    @amount = @sum
    customer = Stripe::Customer.create({
    email: params[:stripeEmail],
    source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
    customer: customer.id,
    amount: @amount,
    description: 'Rails Stripe customer',
    currency: 'Ariary',
  })

  rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to command_path
  end
  params[:total_price]=@sum
end

  def destroy
    @command = Command.find(params[:id])
      @join = @command.join_com_foods[0].destroy
    respond_to do |format|
      format.html { redirect_to command_path }
      format.js { }
    end
  end
  def supr
      @command = Command.find(params[:id])
      @command = Command.find(params[:id]).destroy
      respond_to do |format|
      format.html { redirect_to commands_path }
      format.js { }
    end

  end
end
