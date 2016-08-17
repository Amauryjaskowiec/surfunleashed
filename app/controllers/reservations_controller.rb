class ReservationsController < ApplicationController

   before_action :find_reservation, only: [:show, :update]

  def new
    @reservation = Reservation.new
  end

  def show
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save
  end

  def update
    @reservation.update(reservation_params)
  end

  def destroy
  end

private

  def find_reservation
    @reservation = Reservation.find(:id)
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :surfer[:id], :board[id])
  end

end

