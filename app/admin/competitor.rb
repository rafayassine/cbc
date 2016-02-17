ActiveAdmin.register Competitor do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name_fr, :name_en, :name_cn
#
index do
  selectable_column
  id_column
  column :name_fr
  column :name_en
  column :name_cn
  actions
end

form do |f|
  inputs 'Details' do
    input :name_fr
    input :name_en
    input :name_cn
  end
  actions
end

show do
  attributes_table do
    row :name_fr
    row :name_en
    row :name_cn
  end
  # active_admin_comments
end


end
