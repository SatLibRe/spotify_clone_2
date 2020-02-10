class FavoritesController < ApplicationController
  def index 
    @favorites = Favorite.all
 end 

 def new 
    @favorite = Favorite.new
 end 

 def create
    @favorite = Favorite.create(favorites_params)
    redirect_to favorites_path
 end 

 def show
    @favorite = Favorite.find(params[:id])
 end 

 def edit
    @favorite = Favorite.find(params[:id])
 end

 def update 
    @favorite = Favorite.find(params[:id])
    @favorite.update(favorites_params)
    redirect_to favorites_path
 end 

 def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.delete
    redirect_to favorites_path
 end 

 private

 def favorites_params
    params.require(:favorite).permit(:user_id, :song_id)
 end 
end
