class ChangeWishlistitemToWishlistItem < ActiveRecord::Migration[6.0]
  def change
    rename_table :wishlistitems, :wishlist_items
  end
end
