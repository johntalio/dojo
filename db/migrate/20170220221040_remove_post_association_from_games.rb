class RemovePostAssociationFromGames < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :post_id
  end
end
