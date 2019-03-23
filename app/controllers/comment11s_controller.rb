class Comment11sController < ApplicationController
  # It is an action to save and post comments.
  def create
    # It searches Post from the values of parameter and build it as comments related to Post.
    @post = Post.find(params[:post_id])
    @comment11 = @post.comment11s.build(comment11_params)
    # Change format according to cliant request
    respond_to do |format|
      if @comment11.save
        format.js { render :index }
      else
        format.html { redirect_to post_path(@post), notice: 'You could not post...' }
      end
    end
  end

  private
  # Strong Parameter
  def comment11_params
    params.require(:comment11).permit(:post_id, :content)
  end
end
