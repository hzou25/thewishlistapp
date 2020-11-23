class CreateWishlistitems < ActiveRecord::Migration[6.0]
  def change
    create_table :wishlistitems do |t|
      t.string :item_name
      t.text :item_desc
      t.string :item_link
      t.references :wishlist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
