class GamesController < ApplicationController

  def index
    @game = Game.new
    @games = Game.all

  end


  def show
    @game = game.find(params[:id])
  end


  # def new
  #   #@game = Game.new
  # end


  def create
    @game = Game.create(game_params)
    redirect_to new_player_path
  end


  private

  def game_params
    params.require(:game)#.permit()
  end

end
