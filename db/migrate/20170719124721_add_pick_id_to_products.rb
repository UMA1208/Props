class AddPickIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :pick_id, :integer
  end
end
