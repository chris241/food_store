class ReservationsController < ApplicationController
 before_action :authenticate_client!
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])

  end


  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(nbr_person: params[:nbr_person],
                                   date: params[:date],
                                   client_id: current_client.id,
                                   restaurant_id: session[:resto_id])
    if @reservation.save
      redirect_to root_path
    else

    end

  end


  def update
  end

  def destroy
  end
end
