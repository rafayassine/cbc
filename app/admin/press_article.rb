ActiveAdmin.register PressArticle do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :file, :source
#
index do
  selectable_column
  id_column
  column :title
  column :file
  actions
end

form do |f|
  inputs 'Details' do
    input :title
    input :source
    input :file
  end
  actions
end

show do
  attributes_table do
    row :title
    row :source
    row :file
  end
  # active_admin_comments
end


end
