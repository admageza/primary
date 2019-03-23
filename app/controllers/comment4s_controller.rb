class Comment4sController < ApplicationController
  # It is an action to save and primary comments.
  def create
    # It searches Blog from the values of parameter and build it as comments related to Blog.
    @primary = Primary.find(params[:primary_id])
    @comment4 = @primary.comment4s.build(comment4_params)
    # Change format according to cliant request
    respond_to do |format|
      if @comment4.save
        format.js { render :index }
      else
        format.html { redirect_to primary_path(@primary), notice: 'You could not post...' }
      end
    end
  end

  private
  # Strong Parameter
  def comment4_params
    params.require(:comment4).permit(:primary_id, :content)
  end
end
