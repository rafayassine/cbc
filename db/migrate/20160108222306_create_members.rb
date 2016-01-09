class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :picture
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
