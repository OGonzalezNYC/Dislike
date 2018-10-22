class Player < ApplicationRecord
  belongs_to :round
  has_many :statements
end
