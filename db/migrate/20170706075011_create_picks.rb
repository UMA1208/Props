class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.string :name
      t.text :text
      t.text :image
    end
  end
end
