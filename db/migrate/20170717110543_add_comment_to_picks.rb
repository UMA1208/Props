class AddCommentToPicks < ActiveRecord::Migration
  def change
    add_column :picks, :comment, :text
  end
end
