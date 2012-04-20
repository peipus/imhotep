class Build < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
