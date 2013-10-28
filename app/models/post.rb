class Post < ActiveRecord::Base
  attr_accessible :body, :title, :url, :user_id

  belongs_to :user
  has_many :comments
end
