class Song < ApplicationRecord
   belongs_to :genre
   belongs_to :artist
   has_many :favorites 


   def self.artist_search(search, id)
      if search
         if Artist.find_by(name: search)
            @songs = Song.where(['artist_id LIKE ?', "%#{(Artist.find_by(name: search)).id}%"])
         else 
            @songs = []   
         end 
      else
         @songs = Song.all
      end
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
         if Genre.find_by(name: search)
            @songs = Song.where(['genre_id LIKE ?', "%#{(Genre.find_by(name: search)).id}%"])
         else 
            @songs = []
         end 
      else
         @songs = Song.all
      end
   end

   

end
