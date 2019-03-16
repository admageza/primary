class FavoritesController < ApplicationController
 
  def create
    @user = current_user.id
    favorite = current_user.favorites.create(user_id: params[:user_id])
    redirect_to user_path(@user), notice: "You liked #{favorite.user.name}'s Profile"
  end

  def destroy
    favorite = current_user.favorites.find_by(user_id: params[:user_id]).destroy
    redirect_to user_path(@user), notice: "#{favorite.user.name}'s profile is unliked"
  end
  
  def authenticate_user!
    
  end
end
