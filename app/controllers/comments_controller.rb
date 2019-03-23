class CommentsController < ApplicationController
  # It is an action to save and post comments.
  def create
    # It searches Article from the values of parameter and build it as comments related to Article.
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)
    # Change format according to cliant request
    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_to article_path(@article), notice: 'You could not post...' }
      end
    end
  end

  private
  # Strong Parameter
  def comment_params
    params.require(:comment).permit(:article_id, :content)
  end
end
