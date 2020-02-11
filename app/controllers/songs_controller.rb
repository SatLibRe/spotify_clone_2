class SongsController < ApplicationController
   def index 
      @user = current_user
      @songs = Song.search(params[:search], params[:id])
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
      params.require(:song).permit(:name, :image, :genre_id, :artist_id, :search)
   end 
end
