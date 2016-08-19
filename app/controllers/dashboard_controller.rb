class DashboardController < ApplicationController
  def myboards
    @myboards = board.user
    puts @myboards
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
  end
  def myreservation
  end
end
