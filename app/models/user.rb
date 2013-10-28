class User < ActiveRecord::Base
  attr_accessible :password_digest, :user_name
end
