class Comment9sController < ApplicationController
  # It is an action to save and admission comments.
  def create
    # It searches Admission from the values of parameter and build it as comments related to Admission.
    @admission = Admission.find(params[:admission_id])
    @comment9 = @admission.comment9s.build(comment9_params)
    # Change format according to cliant request
    respond_to do |format|
      if @comment9.save
        format.js { render :index }
      else
        format.html { redirect_to admission_path(@admission), notice: 'You could not post...' }
      end
    end
  end

  private
  # Strong Parameter
  def comment9_params
    params.require(:comment9).permit(:admission_id, :content)
  end
end
