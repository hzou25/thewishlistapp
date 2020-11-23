class AddPasswordSaltToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :password_salt, :string
    rename_column  :users, :password, :password_hash
  end
end
