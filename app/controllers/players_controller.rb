class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    if @player.valid?
      if Game.last.players.length == 3
        # @random_player = Game.last.players.sample
        # @random_player.update(:position => true)
        redirect_to new_round_path
      else
        redirect_to new_player_path
      end
    else
      flash[:error] = @player.errors.full_messages
      redirect_to new_player_path
    end
  end




  private


  def player_params
    params.require(:player).permit(:name, :game_id, :points)
  end

end
