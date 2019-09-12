class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])

  end

  def create
  end

  def new
  end

  def update
  end

  def destroy
  end
end
