class AddProductIdToPicks < ActiveRecord::Migration
  def change
    add_column :picks, :product_id, :integer
  end
end
