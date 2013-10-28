class User < ActiveRecord::Base
  attr_accessible :password, :user_name

  has_many :posts
  has_many :comments

  has_secure_password
end
