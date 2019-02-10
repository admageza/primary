class FavoritesController < ApplicationController
 
  def create
    favorite = current_user.favorites.create(performer_id: params[:performer_id])
    favorite = current_user.favorites.create(post_id: params[:post_id])
    favorite = current_user.favorites.create(publication_id: params[:publication_id])
    favorite = current_user.favorites.create(article_id: params[:article_id])
    favorite = current_user.favorites.create(staff_id: params[:staff_id])
    favorite = current_user.favorites.create(teacher_id: params[:teacher_id])
    favorite = current_user.favorites.create(admission_id: params[:admission_id])
    
  end

  def destroy
    favorite = current_admin_user.favorites.find_by(performer_id: params[:performer_id]).destroy
    favorite = current_admin_user.favorites.find_by(performer_id: params[:post_id]).destroy
    favorite = current_admin_user.favorites.find_by(performer_id: params[:publication_id]).destroy
    favorite = current_admin_user.favorites.find_by(performer_id: params[:article_id]).destroy
    favorite = current_admin_user.favorites.find_by(performer_id: params[:staff_id]).destroy
    favorite = current_admin_user.favorites.find_by(performer_id: params[:teacher_id]).destroy
    favorite = current_admin_user.favorites.find_by(performer_id: params[:admission_id]).destroy
    redirect_to admin_users_url
  end
  
end
