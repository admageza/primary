class Comment6sController < ApplicationController
  # It is an action to save and post comments.
  def create
    # It searches Publication from the values of parameter and build it as comments related to Publication.
    @publication = Publication.find(params[:publication_id])
    @comment6 = @publication.comment6s.build(comment6_params)
    # Change format according to cliant request
    respond_to do |format|
      if @comment6.save
        format.js { render :index }
      else
        format.html { redirect_to publication_path(@publication), notice: 'You could not post...' }
      end
    end
  end

  private
  # Strong Parameter
  def comment6_params
    params.require(:comment6).permit(:publication_id, :content)
  end
end
