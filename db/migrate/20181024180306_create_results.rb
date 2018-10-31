class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :game_id
      t.integer :round_id
      t.integer :player_id
      t.boolean :answer
      t.integer :statement_id

      t.timestamps
    end
  end
end
