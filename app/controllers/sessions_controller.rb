require 'pry'

class SessionsController < ApplicationController
  def login
    @user_name = User.find_by_user_name(params[:user][:user_name])
binding.pry
    if User.authenticate(@user_name.id, @user_name.password)
      session[:user_id] = @user.id
    end

  end
end
