require 'pry'

class User < ActiveRecord::Base
  attr_accessible :password, :user_name

  has_many :posts
  has_many :comments

  has_secure_password

  # include BCrypt

  # def password
  #   @password ||= Password.new(self.password_digest)
  # end

  # def password=(new_password)
  #   @password = Password.create(new_password)
  #   self.password_digest = @password
  # end

  # def self.authenticate(user_name, password)
  #   user = User.find_by_user_name(user_name)
  #   binding.pry
  #   return user if user && (user.password == password)
  #   nil
  # end
end
