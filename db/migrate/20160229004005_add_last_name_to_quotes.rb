class AddLastNameToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :last_name_fr, :string
    add_column :quotes, :last_name_en, :string
    add_column :quotes, :last_name_cn, :string
  end
end
