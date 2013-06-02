class Post < ActiveRecord::Base

  attr_accessible :external_url_news, :filename, :title, :user_id, :image
  attr_accessor :image_file_name
  attr_accessor :image_content_type
  attr_accessor :image_file_size
  attr_accessor :image_updated_at
  
  #has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"


  mount_uploader :image, PictureUploader
  
  validates :filename, :user_id, :presence => true
  

  
end
