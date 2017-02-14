class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.string :platform, null: false
      t.string :esrb_rating, null: false
      t.string :genre
      t.integer :score

      t.timestamps
    end
  end
end
