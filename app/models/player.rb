class Player < ApplicationRecord
  #belongs_to :round
  has_many :statements
  has_many :rounds, through: :statements
  validates :name, presence: true, uniqueness: true
  belongs_to :game




end
