class Member < ActiveRecord::Base
  mount_uploader :picture, FileUploader
end
