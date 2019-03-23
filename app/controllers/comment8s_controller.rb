class Comment8sController < ApplicationController
  # It is an action to save and primary comments.
  def create
    # It searches Primary from the values of parameter and build it as comments related to Primary.
    @primary = Primary.find(params[:blog_id])
    @comment8 = @primary.comment8s.build(comment8_params)
    # Change format according to cliant request
    respond_to do |format|
      if @comment8.save
        format.js { render :index }
      else
        format.html { redirect_to primary_path(@primary), notice: 'You could not post...' }
      end
    end
  end

  private
  # Strong Parameter
  def comment8_params
    params.require(:comment8).permit(:primary_id, :content)
  end
end
