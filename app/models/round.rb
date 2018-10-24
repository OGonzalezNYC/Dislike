class Round < ApplicationRecord
  belongs_to :game
  has_many :statements
  has_many :players, through: :statements

  def points_tally
   @player = Player.find(params[:position] == true)
   self.statements.each do |statement|
     @player.statements.each do |guess|
       if statement.content == @guess.content && statement.answer == @guess.answer
         @player.points += 2
       else
         statement.player.points += 1
       end
     end
  end
  
end
