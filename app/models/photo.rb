class Photo < ActiveRecord::Base
  attr_accessible :file, :name, :url, :content
  mount_uploader :file, ImageUploader
  
  validates :name, presence: true, length: { :maximum => 255 }
  
end
