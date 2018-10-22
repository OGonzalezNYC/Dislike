class StatementsController < ApplicationController

  def new
    @statement = Statement.new
  end

  def create
    @statement.create(statement_params)
    redirect_to round_path(@statement.round)
  end

  private

  def statement_params
    params.require(:statement).require(:content, :answer, :player_id, :round_id)
  end
end
