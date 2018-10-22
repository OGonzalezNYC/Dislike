class Player < ApplicationRecord
  belongs_to :round
  has_many :true_statements
  has_many :false_statements
end
