class RoundsController < ApplicationController

  def index
    @last_round = Round.all.last
  end

  def show
    @round = Round.find(params[:id])
    @statements = @round.statements
  end

  def new
    @round = Round.new
    @current_game = Game.current_game
    @round_check = Game.round_check
  end

  def create
    @round = Round.create(round_params)
    redirect_to new_statement_path
  end

  def result_page
    @round = Round.find(params[:id])
  end


  private


  def round_params
    params.require(:round).permit(:game_id)
  end
end
