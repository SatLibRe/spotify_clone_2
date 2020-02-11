class Song < ApplicationRecord
   belongs_to :genre
   belongs_to :artist
   has_many :favorites 


   def self.search(search, id)
      if search
         @songs = Song.where(['name LIKE ?', "%#{search}%"])
      else
         @songs = Song.all
      end
   end

end
