class Comment3sController < ApplicationController
  # It is an action to save and staff comments.
  def create
    # It searches Staff from the values of parameter and build it as comments related to Staff.
    @staff = Staff.find(params[:staff_id])
    @comment3 = @staff.comment3s.build(comment3_params)
    # Change format according to cliant request
    respond_to do |format|
      if @comment3.save
        format.js { render :index }
      else
        format.html { redirect_to staff_path(@staff), notice: 'You could not post...' }
      end
    end
  end

  private
  # Strong Parameter
  def comment3_params
    params.require(:comment3).permit(:staff_id, :content)
  end
end
