class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :group_name
      t.string :group_invite_code

      t.timestamps
    end
  end
end
