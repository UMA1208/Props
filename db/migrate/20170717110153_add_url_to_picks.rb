class AddUrlToPicks < ActiveRecord::Migration
  def change
    add_column :picks, :url, :text
  end
end
