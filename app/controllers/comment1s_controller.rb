class Comment1sController < ApplicationController
  # It is an action to save and performer comments.
  def create
    # It searches Performer from the values of parameter and build it as comments related to Performer.
    @performer = Performer.find(params[:performer_id])
    @comment1 = @performer.comment1s.build(comment1_params)
    # Change format according to cliant request
    respond_to do |format|
      if @comment1.save
        format.js { render :index }
      else
        format.html { redirect_to performer_path(@performer), notice: 'You could not post...' }
      end
    end
  end

  private
  # Strong Parameter
  def comment1_params
    params.require(:comment1).permit(:performer_id, :content)
  end
end
