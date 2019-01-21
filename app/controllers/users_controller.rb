class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find params[:id]
    @posts = Post.where :user_id => @user.id
  end

  def create

  end


end
