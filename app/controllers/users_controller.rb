class UsersController < ApplicationController

  before_action :authorise_user, except: [:new, :create]

  # Keeping this for future admin login functionality.
  def index
    #@users = User.all
    redirect_to root_path
  end

  def new
    if @current_user.present?
      redirect_to user_path(@current_user.id)
    else
      @user = User.new
    end
  end

  def show
    @user = User.find params[:id]
    @posts = Post.where :user_id => @user.id
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      # Send user back to the create new user page to fix their mistakes.
      render :new
    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
