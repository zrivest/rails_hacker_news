require 'pry'

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_name: params[:user][:user_name], password: params[:user][:password])
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'account'
    end
  end

  def account
    @user = User.new
  end

end
