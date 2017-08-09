class AddProjectIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :project_id, :integer
  end
end
