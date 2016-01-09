class Quote < ActiveRecord::Base
  before_save do
    self.author_en = author_fr if author_en.blank?
    self.author_cn = author_fr if author_cn.blank?
    self.author_statut_en = author_statut_fr if author_statut_en.blank?
    self.author_statut_cn = author_statut_fr if author_statut_cn.blank?
  end
end
