class PostsController < ApplicationController

  #skip_before_action :verify_authenticity_token
  #skip_before_action :verify_authenticity_token, only: [:create]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create post_params
    redirect_to @post
  end

  def create_comment
    # @comment = Comment.create comment_params
    @comment = Comment.create :comment_text => params[:comment_text]
    post = Post.find params[:id]
    post.comments << @comment
    redirect_to post_path(post)
  end


  private
  def post_params
    params.require(:post).permit(:post_text, :post_image, :likes, :user_id)
  end

  def comment_params
    params.require(:comment).permit(:comment_text)
  end

end
