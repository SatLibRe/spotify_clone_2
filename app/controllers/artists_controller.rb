class ArtistsController < ApplicationController
  def index 
    @artists = Artist.all
 end 

 def new 
    @artist = Artist.new
 end 

 def create
    @artist = Artist.create(artist_params)
    redirect_to artists_path
 end 

 def show
    @artist = Artist.find(params[:id])
 end 

 def edit
    @artist = Artist.find(params[:id])
 end

 def update 
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to artists_path
 end 

 def destroy
    @artist = Artist.find(params[:id])
    @artist.delete
    redirect_to artists_path
 end 

 private

 def artist_params
    params.require(:artist).permit(:name, :image, :age, :bio)
 end 

end
