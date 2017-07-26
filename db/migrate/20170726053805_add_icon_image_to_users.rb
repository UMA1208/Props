class AddIconImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :icon_image, :text
  end
end
