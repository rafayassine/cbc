class AddFirstNameCnToFortunes < ActiveRecord::Migration
  def change
    add_column :fortunes, :first_name_cn, :string
  end
end
