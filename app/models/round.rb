class Round < ApplicationRecord
  belongs_to :game
  has_many :false_statements
  has_many :true_statements
  has_many :players, through: :false_statements
  has_many :players, through: :true_statements
end
