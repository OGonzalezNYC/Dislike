class AddPositionToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :position, :boolean, :default => false 
  end
end
