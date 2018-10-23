class StatementsController < ApplicationController

  def new
    @statement = Statement.new
  end

  def create
  
    @statement = Statement.create(statement_params)

    # redirect_to round_path(@statement.round)
    redirect_to round_path(@statement.round_id)
  end





  private

  def statement_params
    params.require(:statement).permit(:content, :answer, :player_id, :round_id)
  end
end
