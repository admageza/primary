class FavoritingsController < ApplicationController
  # If you use Devise, use the following instead of if logged_in?.
 
  respond_to :js # You can write like this if you return the respond of all the existing actions with js.

  def create
    # For the login function you created by yourself,
    # use the logged_in? method you implemented by yourself and make it possible to like something only when logged in.
    if logged_in?
      @user = current_user.id
      @user = User.find(params[:favoriting][:favorited_id])
      current_user.favoriter!(@user)
      respond_with @user
    else
      respond_with @user
    end  
  end
  
  def destroy
    @user = Favoriting.find(params[:id]).favorited
    current_user.unfavorite!(@user)
    respond_with @user
  end
end
