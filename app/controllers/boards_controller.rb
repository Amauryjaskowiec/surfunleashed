class BoardsController < ApplicationController
  before_action :find_board, only: [:show, :edit, :update]

  before_action :authenticate_user!, only: [:create, :new, :create]

  def index
    @boards = Board.all
  end

  def show
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
      if @board.save
        redirect_to user_path(@current_user), notice: "Your new board has been created !"
      else
        render :new
      end
  end


  def edit
  end

  def update
    @board.update(board_params)

    redirect_to user_path(@current_user), notice: "Your board has been updated !"


  end

  private

  def board_params
    params.require(:board).permit(:name, :type, :size, :price_per_day, :description, :address, :city, :country, :automatic_reservation)
  end

  def find_board
    @boards = Board.find(params[:board_id])

  end
end
