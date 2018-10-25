class Round < ApplicationRecord
  belongs_to :game
  has_many :statements
  has_many :players, through: :statements
  has_many :results


  # def points_tally
  #  @true_player = Game.last.players.where(position: true)
  #  self.statements.each do |statement|
  #    @true_player.statements.each do |guess|
  #      if statement.content == guess.content && statement.answer == @guess.answer
  #        @true_player.points += 2
  #      else
  #        statement.player.points += 1
  #      end
  #    end
  #  end
  # end

  def form_position
    false_players = Game.last.players.select do |player|
      !player.position
    end
  end

  def true_position
    true_player = Game.last.players.select do |player|
      !!player.position
    end
  end

  # def rotate_position
  #   false_players = Game.last.players.select do |player|
  #     !player.position
  #   end
  #   true_player = Game.last.players.select do |player|
  #     !!player.position
  #   end
  #   true_player << false_players[0]
  #   true_player[1].update(:position => true)
  #   false_players << true_player[0]
  #   false_players[1].update(:position => false)
  #   #false_players[0].update(:position => true)
  #   #true_player[0].update(:position => false)
  #
  # end

end
