class Photo < ActiveRecord::Base
  attr_accessible :file, :name, :url
  mount_uploader :file, ImageUploader
end
