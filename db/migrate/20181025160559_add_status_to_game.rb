class AddStatusToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :status, :boolean, :default => true
  end
end
