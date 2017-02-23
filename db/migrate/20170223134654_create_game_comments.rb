class CreateGameComments < ActiveRecord::Migration[5.0]
  def change
    create_table :game_comments do |t|
      t.string :comment, null: false
      t.references :game

      t.timestamps
    end
  end
end
