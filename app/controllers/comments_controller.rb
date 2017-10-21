class CommentsController < ApplicationController
  def show
    @comment = Comment.find(params[:id])
  end
  def new
    @comment = Comment.new
  end
  def create
    byebug
    @comment = Comment.create(comment_params)
    redirect_to @comment.post
    #supplied comment's user's foreign key id argument
  end

  private


  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
