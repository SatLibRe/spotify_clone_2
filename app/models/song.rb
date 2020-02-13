class Song < ApplicationRecord
   belongs_to :genre
   belongs_to :artist
   has_many :favorites 

   # Thank you to our brilliant classmate, Kate Raskauskas for helping us figure out the below code!!!!!!!
   def self.artist_search(search, id)
      if search
         artists = Artist.where(['name LIKE ?', "%#{search}%"])
         @songs = []
         artists.each do |artist|
            @songs = @songs + artist.songs
         end
      else
         @songs = Song.all
      end
      @songs
   end

   def self.search(search, id)
      if search
         @songs = Song.where(['name LIKE ?', "%#{search}%"])
      else
         @songs = Song.all
      end
   end

   def self.genre_search(search, id)
      if search
         genres = Genre.where(['name LIKE ?', "%#{search}%"])
         @songs = []
         genres.each do |genre|
            @songs = @songs + genre.songs
         end
      else
         @songs = Song.all
      end
      @songs
   end

end
