class FavoritesController < ApplicationController
  before_action :authenticate_user! 

  def create
    @user = current_user.id
    favorite = current_user.favorites.create(article_id: params[:article_id])
    redirect_to article_url, notice: "You liked #{favorite.article.admin_user_id}'s article"
  end

  def destroy
    favorite = current_user.favorites.find_by(article_id: params[:article_id]).destroy
    redirect_to articles_url, notice: "#{favorite.article.admin_user_id.name}'s article is unliked"
  end
  
  def authenticate_user!
    
  end
end
