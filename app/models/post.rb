class Post < ActiveRecord::Base
  attr_accessible :external_url_news, :filename, :title, :user_id
end
