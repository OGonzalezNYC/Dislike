class Statement < ApplicationRecord
  belongs_to :round
  belongs_to :player

  validates :content, presence: true
  validates :player_id, presence: true
  # validate :correct_num_answers

  # def correct_num_answers
  #   if (answer ==)
  # end

end
