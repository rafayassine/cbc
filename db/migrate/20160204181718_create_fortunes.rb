class CreateFortunes < ActiveRecord::Migration
  def change
    create_table :fortunes do |t|
      t.string :first_name
      t.string :last_name
      t.text :description_fr
      t.text :description_en
      t.text :description_cn
      t.integer :age
      t.string :money_fr
      t.string :money_en
      t.string :money_cn
      t.integer :global_ranking

      t.timestamps null: false
    end
  end
end
