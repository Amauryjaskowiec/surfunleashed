class ReservationsController < ApplicationController

   before_action :find_reservation, only: [:show, :update]
   before_action :find_board, only: [:show, :new, :create]
   before_action :authenticate_user!


  def show
      @reservation = current_user.reservations
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.board = @board
    @reservation.surfer = current_user
    if @reservation.save
      render :show
      # redirect_to board_reservation_path(current_user), notice: "Your reservation is now pending !"
      else
        render :new
      end
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
    params.require(:reservation).permit(:start_date, :end_date)
  end

  def find_board
    @board = Board.find(params[:board_id])
  end

end

