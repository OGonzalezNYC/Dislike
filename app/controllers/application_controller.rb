class ApplicationController < ActionController::Base

  def start_round
    Round.create(round_params)
  end

end
