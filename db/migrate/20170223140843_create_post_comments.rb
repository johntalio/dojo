class CreatePostComments < ActiveRecord::Migration[5.0]
  def change
    create_table :post_comments do |t|
      t.string :comment, null: false
      t.references :post

      t.timestamps
    end
  end
end
