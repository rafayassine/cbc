ActiveAdmin.register Quote do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :text_fr, :text_en, :text_cn, :author_fr, :author_en, :author_cn, :author_statut_fr, :author_statut_en, :author_statut_cn
#
index do
  selectable_column
  id_column
  column :text_fr
  column :text_en
  column :text_cn
  column :author_fr
  column :author_en
  column :author_cn
  column :author_statut_fr
  column :author_statut_en
  column :author_statut_cn
  actions
end

form do |f|
  inputs 'Details' do
    input :text_fr
    input :text_en
    input :text_cn
    input :author_fr
    input :author_en
    input :author_cn
    input :author_statut_fr
    input :author_statut_en
    input :author_statut_cn
  end
  actions
end

show do
  attributes_table do
    column :text_fr
    column :text_en
    column :text_cn
    column :author_fr
    column :author_en
    column :author_cn
    column :author_statut_fr
    column :author_statut_en
    column :author_statut_cn
  end
  # active_admin_comments
end


end
