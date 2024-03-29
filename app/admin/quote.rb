ActiveAdmin.register Quote do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :text_fr, :text_en, :text_cn, :author_fr, :last_name_fr ,:last_name_en, :last_name_cn, :author_en, :author_cn, :author_statut_fr, :author_statut_en, :author_statut_cn
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
  column :author_stalast_name_frtut_fr
  column :author_statut_en
  column :last_name_en
  column :author_statut_cn
  column :last_name_cn
  actions
end

form do |f|
  inputs 'Details' do
    input :text_fr
    input :text_en
    input :text_cn
    input :author_fr
    input :last_name_fr
    input :author_en
    input :last_name_en
    input :author_cn
    input :last_name_cn
    input :author_statut_fr
    input :author_statut_en
    input :author_statut_cn
  end
  actions
end

show do
  attributes_table do
    row :text_fr
    row :text_en
    row :text_cn
    row :author_fr
    row :last_name_fr
    row :author_en
    row :last_name_en
    row :author_cn
    row :last_name_cn
    row :author_statut_fr
    row :author_statut_en
    row :author_statut_cn
  end
  # active_admin_comments
end


end
