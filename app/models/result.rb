class Result < ApplicationRecord
  belongs_to :game
  belongs_to :round
  belongs_to :player

  validates :answer, inclusion: { in: [true, false] }
end
