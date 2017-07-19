class RemoveCommentFromPicks < ActiveRecord::Migration
  def change
    remove_column :picks, :comment, :text
    remove_column :picks, :name, :text
  end
end
