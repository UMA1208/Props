class RemoveTagListFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :tag_list, :text
  end
end
