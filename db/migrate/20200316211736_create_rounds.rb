class CreateRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds do |t|
      t.string :question
      t.string :options
      t.string :answer
      t.integer :game_id

      t.timestamps
    end
  end
end
