ActiveAdmin.register Fortune do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :first_name, :first_name_cn, :last_name, :description_fr, :description_en, :description_cn, :age, :money_fr, :money_en, :money_cn, :global_ranking, :locale
#
index do
  selectable_column
  id_column
  column :first_name
  column :first_name_cn
  column :last_name
  column :description_fr
  column :description_en
  column :description_cn
  column :age
  column :money_fr
  column :money_en
  column :money_cn
  column :global_ranking
  actions
end

form do |f|
  inputs 'Details' do
    input :first_name
    input :first_name_cn
    input :last_name
    input :description_fr
    input :description_en
    input :description_cn
    input :age
    input :money_fr
    input :money_en
    input :money_cn
    input :global_ranking
  actions
  end
end

show do
  attributes_table do
    row :first_name
    row :first_name_cn
    row :last_name
    row :description_fr
    row :description_en
    row :description_cn
    row :age
    row :money_fr
    row :money_en
    row :money_cn
    row :global_ranking
  end
  # active_admin_comments
end


end
