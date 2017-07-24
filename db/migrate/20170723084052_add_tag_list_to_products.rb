class AddTagListToProducts < ActiveRecord::Migration
  def change
    add_column :products, :tag_list, :text
  end
end
