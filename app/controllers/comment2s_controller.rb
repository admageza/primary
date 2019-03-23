class Comment2sController < ApplicationController
  # It is an action to save and teacher comments.
  def create
    # It searches teacher from the values of parameter and build it as comments related to teacher.
    @teacher = Teacher.find(params[:teacher_id])
    @comment2 = @teacher.comment2s.build(comment2_params)
    # Change format according to cliant request
    respond_to do |format|
      if @comment2.save
        format.js { render :index }
      else
        format.html { redirect_to teacher_path(@teacher), notice: 'You could not post...' }
      end
    end
  end

  private
  # Strong Parameter
  def comment2_params
    params.require(:comment2).permit(:teacher_id, :content)
  end
end
