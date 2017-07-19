class RemoveProductIdFromPicks < ActiveRecord::Migration
  def change
    remove_column :picks, :product_id, :integer
  end
end
