class RoundsController < ApplicationController

  def index
    @last_round = Round.all.last
  end

  def show

    @round = Round.find(params[:id])
    @statements = @round.statements
    @true_player = Round.last.true_position[0]
    @result = Result.new
    if @round.shuffled == false
      Rails.application.config.my_config.clear
      Round.last.statements.shuffle.each {|s| Rails.application.config.my_config << s }
      @shuffled_array = Rails.application.config.my_config
      @round.update(shuffled: true)
    end
      @shuffled_array = Rails.application.config.my_config

    #byebug
  end

  def new
    Game.last.players.each {|player| player.update(:position => false)}
    @random_player = Game.last.players.sample
    @random_player.update(:position => true)
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
    params.require(:round).permit(:game_id, :shuffled)
  end
end
