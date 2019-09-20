class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end


  def new
    @reservation = Reservation.new
    @food_id = params[:food_id]
  end

  def create
    @food_id = params[:food_id]
    if current_client== nil
      flash[:danger] = "Vous devez vous connecter"
      redirect_to new_client_session_path
    else

    @reservation = Reservation.new(nbr_person: params[:nbr_person],
                                   date: params[:date],
                                   client_id: current_client.id,
                                   restaurant_id: session[:resto_id])

    if @reservation.save
      flash[:success] = "Vous avez enregistré une réservation"
      redirect_to reservations_path
    else


    end
    end



  end


  def update
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to reservations_path }
      format.js { }
    end
    
  end
end
