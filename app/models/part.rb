class Part < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
