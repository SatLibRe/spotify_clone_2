class GenresController < ApplicationController

    def index 
        @genres = Genres.all
     end 
  
     def new 
        @genre = Genre.new
     end 
  
     def create
        @genre = Genre.create(genre_params)
        redirect_to genres_path
     end 
  
     def show
        @genre = Genre.find(params[:id])
     end 
  
     def edit
        @genre = Genre.find(params[:id])
     end
  
     def update
        @genre= Genre.find(params[:id])
        @genre.update(user_params)
        redirect_to genres_path
     end 
  
     def destroy
        @genre = Genre.find(params[:id])
        @genre.delete
        redirect_to genres_path
     end 
  
     private
  
     def genre_params
        params.require(:genre).permit(:name, :image)
     end 
  end
  