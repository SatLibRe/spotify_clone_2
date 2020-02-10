class FavoritesController < ApplicationController
  def index 
    @favorites = Favorite.all
 end 

 def new 
    @favorite = Favorite.new
 end 

 def create
    @favorite = Favorite.create(song_id: params[:song_id], user_id: User.first.id )
    redirect_to songs_path
 end 

 def show
    @favorite = Favorite.find(params[:id])
 end 

 def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.delete
    redirect_to user_path(@favorite.user_id)
 end 

 private

 def favorites_params
    params.require(:favorite).permit(:user_id, :song_id)
 end 
end
