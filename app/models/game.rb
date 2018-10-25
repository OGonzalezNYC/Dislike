class Game < ApplicationRecord
  has_many :rounds
  has_many :players
  has_many :results

  def self.current_game
    Game.all.last.rounds.size
  end

  def self.round_check
    Game.all.last.rounds.size == 6
  end

  # def self.set_points
  #
  # end
  # @@player_arr = []
  #
  # def self.player_arr
  #   @@player_arr
  # end
  #
  # def self.set_player_arr
  #   arr = Game.last.players.shuffle
  #   arr.each {|player| Game.player_arr << player}
  # end
  #
  # def self.set_player_true
  #   @@player_arr = Game.player_arr.rotate
  #   @@player_arr[0].update(position: true)
  #   @@player_arr[1].update(position: false)
  #   @@player_arr[2].update(position: false)
  #
  # end

end
