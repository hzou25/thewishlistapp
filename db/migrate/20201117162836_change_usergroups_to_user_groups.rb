class ChangeUsergroupsToUserGroups < ActiveRecord::Migration[6.0]
  def change
    rename_table :usergroups, :user_groups
  end
end
