class CommentsController < ApplicationController
  def create
    # It searches Blog from the values of parameter and build it as comments related to Blog.
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @staff = Staff.find(params[:staff_id])
    @comment = @staff.comments.build(comment_params)
    @teacher = Teacher.find(params[:teacher_id])
    @comment = @teacher.comments.build(comment_params)
    @publication = Publication.find(params[:publication_id])
    @comment = @publication.comments.build(comment_params)
    @performer = Performer.find(params[:performer_id])
    @comment = @performer.comments.build(comment_params)
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
