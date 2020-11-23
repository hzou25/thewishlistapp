class ChangeUserGroupIdToUserGroupId < ActiveRecord::Migration[6.0]
  def change
    rename_column :wishlists, :usergroup_id, :user_group_id
  end
end
