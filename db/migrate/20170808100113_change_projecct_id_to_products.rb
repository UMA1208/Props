class ChangeProjecctIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :project_path, :text
  end
end
