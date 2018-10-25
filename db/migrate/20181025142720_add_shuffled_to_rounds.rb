class AddShuffledToRounds < ActiveRecord::Migration[5.2]
  def change
    add_column :rounds, :shuffled, :boolean, :default => false
  end
end
