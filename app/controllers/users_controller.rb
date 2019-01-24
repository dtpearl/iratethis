class UsersController < ApplicationController

  before_action :authorise_user, except: [:new, :create]


  def index
    @users = User.all
    redirect_to root_path
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find params[:id]
    @posts = Post.where :user_id => @user.id
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user) # Future -> root_path
    else
      # Send user back to the creat new user page to fix their mistakes.
      render :new
    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
