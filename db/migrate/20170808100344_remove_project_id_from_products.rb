class RemoveProjectIdFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :project_id, :integer
  end
end
