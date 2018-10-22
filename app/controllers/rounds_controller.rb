class RoundsController < ApplicationController

  def new
    @round = Round.new
  end

  def show
    @round = Round.find(params[:id])
  end

  def create
    @round.create(round_params)
    redirect_to new_statement_path
  end


  private


  def round_params
    params.require(:round).permit(:game_id)
  end
end
