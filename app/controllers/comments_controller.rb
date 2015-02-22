class CommentsController < ApplicationController

  def create
    puts params
    comment = Comment.new(comment_params)
    if comment.save
       render json: comment
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    head :no_content
  end

  private

  def comment_params
    params.require(:comment).permit(:post_id, :username, :body)
  end

end
