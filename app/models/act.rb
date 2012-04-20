class Act < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
