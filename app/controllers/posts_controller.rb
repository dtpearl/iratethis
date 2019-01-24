class PostsController < ApplicationController

  #skip_before_action :verify_authenticity_token
  #skip_before_action :verify_authenticity_token, only: [:create]
  before_action :authorise_user

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
    @post = Post.new post_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @post.post_image = req["public_id"]
      @post.likes = 0
      @post.user_id = @current_user.id
      @post.save
    end
    redirect_to @post
  end

  def create_comment
    @comment = Comment.new :comment_text => params[:comment_text]
    @comment.user_id = @current_user.id
    post = Post.find params[:id]
    post.comments << @comment
    redirect_to post_path(post)
  end

  def delete_comment
    @comments = Comment.where(:post_id => params[:id], :user_id => @current_user.id)
    @comments.last.destroy
    redirect_to post_path(params[:id])
    #raise "hell"
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    post = Post.find params[:id]
    post.post_text = params[:post_text]
    redirect_to post
  end

  def destroy
    post = Post.find params[:id]
    post.destroy
    redirect_to user_path(@current_user)
  end

  private
  def post_params
    params.require(:post).permit(:post_text, :post_image, :likes, :user_id)
  end

  def comment_params
    params.require(:comment).permit(:comment_text)
  end

end
