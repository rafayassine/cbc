ActiveAdmin.register PressLink do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :url, :title
#
index do
  selectable_column
  id_column
  column :url
  column :title
  actions
end

form do |f|
  inputs 'Details' do
    input :url
    input :title
  end
  actions
end

show do
  attributes_table do
    row :url
    row :title
  end
  # active_admin_comments
end


end
