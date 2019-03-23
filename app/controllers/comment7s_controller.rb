class Comment7sController < ApplicationController
  # It is an action to save and besteacher comments.
  def create
    # It searches Besteacher from the values of parameter and build it as comments related to Besteacher.
    @besteacher = Besteacher.find(params[:besteacher_id])
    @comment7 = @besteacher.comment7s.build(comment7_params)
    # Change format according to cliant request
    respond_to do |format|
      if @comment7.save
        format.js { render :index }
      else
        format.html { redirect_to besteacher_path(@besteacher), notice: 'You could not post...' }
      end
    end
  end

  private
  # Strong Parameter
  def comment7_params
    params.require(:comment7).permit(:besteacher_id, :content)
  end
end
