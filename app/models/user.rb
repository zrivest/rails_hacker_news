class User < ActiveRecord::Base
  attr_accessible :password_digest, :user_name

  has_many :posts
  has_many :comments
end
