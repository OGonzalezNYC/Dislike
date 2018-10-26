class StatementsController < ApplicationController

  def new
    @statement = Statement.new
    @form_position = Round.last.form_position
    @true_player = Round.last.true_position[0]
  end

  def create

    @statement = Statement.create(statement_params)
    if @statement.valid?
    # redirect_to round_path(@statement.round)
      if Round.last.statements.size == 4
      redirect_to round_path(@statement.round_id)
    else
      redirect_to new_statement_path
    end
    else
      flash[:error] = @statement.errors.full_messages
      redirect_to new_statement_path
    end
  end





  private

  def statement_params
    params.require(:statement).permit(:content, :answer, :player_id, :round_id)
  end
end
