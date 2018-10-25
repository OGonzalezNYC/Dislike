class ResultsController < ApplicationController

  def index
    @results = Game.last.rounds.last.results
    @game = Game.last
  end

  def endgame
    byebug
    Game.last.update(status: false)
    byebug
    redirect_to results_path
  end

  def new
  end

  def create
    @result = Result.create(result_params)
    # set_points(params) # Before being redirected to results, assign points from ApplicationController
    if Round.last.results.size == 4

      set_points(params)
      redirect_to results_path
    else

      set_points(params)
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
