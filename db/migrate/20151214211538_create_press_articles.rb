class CreatePressArticles < ActiveRecord::Migration
  def change
    create_table :press_articles do |t|
      t.string :file
      t.string :title
      t.string :source
      t.string :language

      t.timestamps null: false
    end
  end
end
