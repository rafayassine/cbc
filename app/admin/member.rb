ActiveAdmin.register Member do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :url, :name, :picture
#
index do
  selectable_column
  id_column
  column :url
  column :name
  column :picture
  actions
end

form do |f|
  inputs 'Details' do
    input :url
    input :name
    input :picture
  end
  actions
end

show do
  attributes_table do
    row :url
    row :name
    row :picture
  end
  # active_admin_comments
end


end
