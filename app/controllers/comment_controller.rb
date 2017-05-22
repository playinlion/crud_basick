class CommentController < ApplicationController

  def create
    @comment = Comment.new
    @comment.content = params[:content]
    @comment.post_id = params[:id]
    @comment.save

    redirect_to "/item/#{params[:id]}"
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to "/item/#{params[:id]}"
  end
end
