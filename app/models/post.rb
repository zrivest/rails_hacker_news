class Post < ActiveRecord::Base
  attr_accessible :body, :title, :url, :user_id
end
