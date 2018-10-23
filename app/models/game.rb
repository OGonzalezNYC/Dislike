class Game < ApplicationRecord
  has_many :rounds
  has_many :players


  def self.current_game
    Game.all.last.rounds.size
  end

  def self.round_check
    Game.all.last.rounds.size == 6  
  end


end
