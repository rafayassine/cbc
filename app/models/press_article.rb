class PressArticle < ActiveRecord::Base
  mount_uploader :file, FileUploader
end
