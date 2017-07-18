class RemoveImageFromPicks < ActiveRecord::Migration
  def change
    remove_column :picks, :image, :text
  end
end
