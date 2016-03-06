class Quote < ActiveRecord::Base
  before_save do
    self.author_en = author_fr if author_en.blank?
    self.last_name_en = last_name_fr if last_name_en.blank?
    self.last_name_cn = last_name_fr if last_name_cn.blank?
    self.author_cn = author_fr if author_cn.blank?
    self.author_statut_en = author_statut_fr if author_statut_en.blank?
    self.author_statut_cn = author_statut_fr if author_statut_cn.blank?
  end

  def inverse_author_name_fr
    last_name_fr ? last_name_fr : author_fr.split.reverse.join(" ")
  end
  def inverse_author_name_en
    last_name_en ? last_name_en : author_en.split.reverse.join(" ")
  end
end
