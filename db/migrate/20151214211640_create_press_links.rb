class CreatePressLinks < ActiveRecord::Migration
  def change
    create_table :press_links do |t|
      t.string :url
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
