# This controller wasn't necessary in the end.
# Comments were both created and deleted through the posts_controller.
# I've kept it in case I need it in the future.


# class CommentsController < ApplicationController
#
#   before_action :authorise_user
#
#   def index
#     @comments = Comment.all
#   end
#
#   def new
#     @comment = Comment.new
#   end
#
#   def create
#     comment = Comment.create comment_params
#     #redirect_to comments_path
#   end
#
#   def destroy
#     # comment = Comment.find params[:id]
#     # comment.destroy
#     # redirect_to post_path(@current_user)
#   end
#
#   private
#   def comment_params
#     params.require(:comment).permit(:comment_text, :post_id)
#   end
#
#
# end
