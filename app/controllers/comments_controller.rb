class CommentsController < ApplicationController

  def create
    @comment = current_user.authored_comments.new(comment_params)
    if @comment.save
      redirect_to :back
    else
      flash[:errors] = @comment.errors.full_messages
      redirect_to :back
    end
    
  end

  def destroy
  end
  
  def comment_params
    params.require(:comment).permit(:body, :commentable_id, :commentable_type)
  end

end
