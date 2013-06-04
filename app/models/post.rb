class Post < ActiveRecord::Base

  belongs_to :user
  has_many :comments
  
  attr_accessible :external_url_news,  :title, :user_id, :image
  
  mount_uploader :image, PictureUploader
  
  validates :user_id, :presence => true
  

  default_scope order('created_at DESC')

end
