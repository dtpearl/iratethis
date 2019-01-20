class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.create comment_params
    #redirect_to comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_text, :post_id)
  end


end
