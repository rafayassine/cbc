class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :text_fr
      t.text :text_en
      t.text :text_cn
      t.string :author_fr
      t.string :author_en
      t.string :author_cn
      t.string :author_statut_fr
      t.string :author_statut_en
      t.string :author_statut_cn

      t.timestamps null: false
    end
  end
end
