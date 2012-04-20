class Win < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
