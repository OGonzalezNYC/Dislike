class Player < ApplicationRecord
  #belongs_to :round
  has_many :statements
  has_many :results
  has_many :rounds, through: :statements
  validates :name, presence: true
  belongs_to :game

# @set_position[Player.all.last.id-1]
end
