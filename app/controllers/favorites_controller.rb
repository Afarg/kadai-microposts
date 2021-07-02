class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  def create
    
    favorite_micropost = Micropost.find(params[:favorite_id])
    current_user.like(favorite_micropost)
    flash[:success] = 'お気に入りに追加しました'
    redirect_to root_url
    
  end

  def destroy
    
    favorite_micropost = Micropost.find(params[:favorite_id])
    current_user.unlike(favorite_micropost)
    flash[:success] = 'お気に入りから削除されました'
    
    redirect_to root_url
    
  end
end
