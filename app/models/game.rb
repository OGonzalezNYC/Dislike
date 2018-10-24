class Game < ApplicationRecord
  has_many :rounds
  has_many :players


  def self.current_game
    Game.all.last.rounds.size
  end

  def self.round_check
    Game.all.last.rounds.size == 6
  end

  def set_booleans
    random_boolean = [true, false]
    booleans = []
    3.times do
      if booleans.include?(true)
        booleans << false
      elsif (booleans.size == 2)&&(booleans.exclude?(true))
        booleans << true
      else
        booleans << random_boolean.sample
      end
    end
    booleans
  end

  def set_position
    @set_position = set_booleans
  end





end
