class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.string :name_fr
      t.string :name_en
      t.string :name_cn

      t.timestamps null: false
    end
  end
end
