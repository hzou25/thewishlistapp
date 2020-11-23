class RenameGroupNameToName < ActiveRecord::Migration[6.0]
  def change
    rename_column :groups, :group_name, :name
    rename_column :groups, :group_invite_code, :invite_code
    rename_column :wishlists, :wishlist_name, :name
    rename_column :wishlistitems, :item_name, :name
    rename_column :wishlistitems, :item_link, :link
    rename_column :wishlistitems, :item_desc, :desc
  end
end
