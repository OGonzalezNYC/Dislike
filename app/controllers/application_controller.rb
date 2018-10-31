class ApplicationController < ActionController::Base

  def start_round
    Round.create(round_params)
  end

  def set_points(params)
    answer = params[:result][:answer]
    player = Game.last.players.find(params[:result][:player_id])
    statement = Round.last.statements.find(params[:result][:statement_id])
    victim = Round.last.true_position[0]
    add_player_point = player.points + 1
    add_victim_point = victim.points + 1

    if statement.answer.to_s == answer
      victim.update(:points => add_victim_point)
    else
      player.update(:points => add_player_point)
    end

  end



end
