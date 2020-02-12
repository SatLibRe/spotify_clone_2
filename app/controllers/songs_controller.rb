class SongsController < ApplicationController
   def index 
      @user = current_user
      if params[:artist_search]
         @songs = Song.artist_search(params[:artist_search], params[:id])
      elsif params[:search] 
         @songs = Song.search(params[:search], params[:id])
      elsif params[:genre_search]
         @songs = Song.genre_search(params[:genre_search], params[:id])
      else 
         @songs = Song.all
      end 
   end 

   def new 
      @song = Song.new
   end 

   def create
      @song = Song.create(song_params)
      redirect_to songs_path
   end 

   def show
      @song = Song.find(params[:id])
   end 

   def edit
      @song = Song.find(params[:id])
   end

   def update 
      @song = Song.find(params[:id])
      @song.update(user_params)
      redirect_to songs_path
   end 

   def destroy
      @song = Song.find(params[:id])
      @song.delete
      redirect_to songs_path
   end 

   private

   def song_params
      params.require(:song).permit(:name, :image, :genre_id, :artist_id, :search, :artist_search, :artist, :genre_search )
   end 
end
