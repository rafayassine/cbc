class CreatePresentationPhotos < ActiveRecord::Migration
  def change
    create_table :presentation_photos do |t|
      t.string :file
      t.string :title

      t.timestamps null: false
    end
  end
end
