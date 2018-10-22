class Round < ApplicationRecord
  belongs_to :game
  has_many :statements
  has_many :players, through: :statements
end
