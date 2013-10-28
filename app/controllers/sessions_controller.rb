require 'pry'

class SessionsController < ApplicationController
  def login
    @user = User.find_by_user_name(params[:user][:user_name])

    if @user.authenticate(params[:password])
      session[:user_id] = @user.id

    end

  end

def create
    @user = User.new(user_name: params[:user][:user_name], password: params[:user][:password])
    if @user.save
      session[:user_id] = @user.id
      redirect_to @posts
    else
      render 'account'
    end
  end

def logout
  session.clear
  redirect_to @posts
end

end
