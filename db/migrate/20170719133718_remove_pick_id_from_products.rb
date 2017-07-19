class RemovePickIdFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :pick_id, :integer
  end
end
