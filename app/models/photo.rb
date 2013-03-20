class Photo < ActiveRecord::Base
  belongs_to :user
  attr_accessible :file, :name, :url, :content
  mount_uploader :file, ImageUploader
  
  validates :name, presence: true, length: { :maximum => 255 }
  
end
