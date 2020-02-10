class Song < ApplicationRecord
   belongs_to :genre
   belongs_to :artist
   has_many :favorites 
end
