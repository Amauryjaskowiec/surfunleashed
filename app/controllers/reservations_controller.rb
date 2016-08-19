class ReservationsController < ApplicationController

   before_action :find_reservation, only: [:show, :update]
   before_action :find_board, only: [:new, :create]

  def new
    @reservation = Reservation.new
  end

  def show
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to user_path(current_user), notice: "Your reservation is now pending !"
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
    params.require(:reservation).permit(:start_date, :end_date, :surfer[id], :board[id])
  end

  def find_board
    @board = Board.find(params[:board_id])
  end

end

