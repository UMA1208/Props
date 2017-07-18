class RemoveTextFromPicks < ActiveRecord::Migration
  def change
    remove_column :picks, :text, :text
  end
end
