class Post < ActiveRecord::Base
  attr_accessible :body, :title, :url, :user_id
  validates :user_name, presence: true

  belongs_to :user
  has_many :comments
end
