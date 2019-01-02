class FavoritesController < ApplicationController
   before_action :authenticate_user!

  def create
    favorite = current_user.favorites.create(performer_id: params[:performer_id])
    redirect_to admin_performer_url, notice: "You liked #{favorite.performer.admin_user.name}'s performer"
  end

  def destroy
    favorite = current_user.favorites.find_by(performer_id: params[:performer_id]).destroy
    redirect_to performers_url, notice: "#{favorite.performer.admin_user.name}'s performer is unliked"
  end
end
