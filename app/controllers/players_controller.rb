class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player.create(player_params)
    if Player.all.length == 3
    redirect_to new_round_path
  end
end
