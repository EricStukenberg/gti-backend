class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :host_id
      t.integer :round_count

      t.timestamps
    end
  end
end
