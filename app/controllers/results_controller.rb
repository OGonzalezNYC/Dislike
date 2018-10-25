class ResultsController < ApplicationController

  def index
    @results = Game.last.results
  end

  def new
  end

  def create
    @result = Result.create(result_params)
    # set_points(params) # Before being redirected to results, assign points from ApplicationController
    if Round.last.results.size == 4
      redirect_to results_path
    else
      redirect_to round_path(Round.last.id)
    end
  end

  def show
    @result = Result.find(params[:id])
  end

  private

  def result_params
     params.require(:result).permit(:game_id, :round_id, :player_id, :answer, :statement_id)
  end

end