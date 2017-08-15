class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :users, :uid
    remove_column :users, :remember_created_at
    remove_column :users, :reset_password_sent_at
    remove_column :users, :reset_password_token
  end
end
