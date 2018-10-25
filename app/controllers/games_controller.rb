class GamesController < ApplicationController

  def index
    @games = Game.all
  end


  def show
    @game = game.find(params[:id])
  end


  # def new
  #   @game = Game.new
  #
  # end


  def create
    @game = Game.create

    redirect_to new_player_path
  end

  # def edit
  #   @game = Game.find(params[:id])
  # end

  # def update
  #   byebug
  #   @game.update(games_params)
  #   redirect_to results_path
  # end

  private

  def game_params
     params.require(:game).permit(:status)
  end

end
