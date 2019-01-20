class PostsController < ApplicationController

  #skip_before_action :verify_authenticity_token
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create post_params
    redirect_to @post
  end



  private
  def post_params
    params.require(:post).permit(:post_text, :post_image, :likes, :user_id)
  end

end
