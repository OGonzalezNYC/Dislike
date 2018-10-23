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
      if Player.all.length == 3
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
    params.require(:player).permit(:name, :game_id)
  end

end
