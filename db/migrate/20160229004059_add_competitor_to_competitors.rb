class AddCompetitorToCompetitors < ActiveRecord::Migration
  def change
    add_column :competitors, :competitor_fr, :string
    add_column :competitors, :competitor_en, :string
    add_column :competitors, :competitor_cn, :string
  end
end
