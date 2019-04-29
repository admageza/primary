class CommentsController < ApplicationController
  before_action :load_commentable
  # It is an action to save and post comments.
  def index
    @comments = @commentable.comments
  end
  
  def new
    @comment = @commentable.comments.new
  end

  def create
    @comment = @commentable.comments.build(comment_params)
    respond_to do |format|
      if @comment.save
         format.js { render :index }
      else
        format.html { redirect_to @commentable, notice: "Comment can't be blank." }
      end
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @commentable = @comment.commentable
    respond_to do |format|
      if @comment.destroy
        format.html { redirect_to @commentable }
        format.js 
      end
    end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
  end

  private
  # Strong Parameter
  def load_commentable
    resource, id = request.path.split('/')[1,2]
    @commentable = resource.singularize.classify.constantize.find(id)
  end
  
   def comment_params
      params.require(:comment).permit(:content)
   end
end
