class Comment10sController < ApplicationController
  # It is an action to save and user comments.
  def create
    # It searches User from the values of parameter and build it as comments related to User.
    @user = User.find(params[:user_id])
    @comment10 = @user.comment10s.build(comment10_params)
    # Change format according to cliant request
    respond_to do |format|
      if @comment10.save
        format.js { render :index }
      else
        format.html { redirect_to user_path(@user), notice: 'You could not post...' }
      end
    end
  end

  private
  # Strong Parameter
  def comment10_params
    params.require(:comment10).permit(:user_id, :content)
  end
end
