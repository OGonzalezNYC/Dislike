class RoundsController < ApplicationController

  def new
    @round = Round.new
  end

  def create
    @round.create(round_params)
    redirect_to new_statement_path
  end
end
