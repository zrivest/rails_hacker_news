class PostsController < ApplicationController
  def index
    @posts = Post.all
    @users = User.all
  end
end
