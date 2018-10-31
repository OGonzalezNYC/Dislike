class CreateStatements < ActiveRecord::Migration[5.2]
  def change
    create_table :statements do |t|
      t.text :content
      t.boolean :answer
      t.integer :player_id
      t.integer :round_id

      t.timestamps
    end
  end
end
