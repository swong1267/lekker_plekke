class CommentsController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @comment = @place.comments.create(comment_params)
    redirect_to place_path(@place)
  end

  def like
    @comment = Comment.find(params[:comment_id])
    @comment.likes += 1
    @comment.save
    redirect_to places_path
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :text, :like)
    end
end



