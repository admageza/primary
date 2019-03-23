class Comment5sController < ApplicationController
  # It is an action to save and maternaire comments.
  def create
    # It searches Maternaire from the values of parameter and build it as comments related to Maternaire.
    @maternaire = Maternaire.find(params[:maternaire_id])
    @comment5 = @maternaire.comment5s.build(comment5_params)
    # Change format according to cliant request
    respond_to do |format|
      if @comment5.save
        format.js { render :index }
      else
        format.html { redirect_to maternaire_path(@maternaire), notice: 'You could not post...' }
      end
    end
  end

  private
  # Strong Parameter
  def comment5_params
    params.require(:comment5).permit(:maternaire_id, :content)
  end
end
