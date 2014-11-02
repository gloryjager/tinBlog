class CommentsController < ApplicationController
   def create  
	params.permit! 
    @messageboard = Messageboard.find(params[:messageboard_id])  
    @comment = @messageboard.comments.build(params[:comment])  
    @comment.save  
  
    redirect_to @messageboard  
  end  
  
  def destroy  
    @comment = Comment.find(params[:id])  
    @comment.destroy  
  
    redirect_to @comment.messageboard  
  end  
end
