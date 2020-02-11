# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Genre.destroy_all
Artist.destroy_all
User.destroy_all
Song.destroy_all
Favorite.destroy_all

10.times { Genre.create(name: Faker::Music.genre, image: "text") }

50.times { Artist.create(name: Faker::Music.band, age: 10, bio: Faker::Lorem.paragraphs(number: 1), image: "text") }

User.create(name: "Miles") 

75.times { Song.create(name: Faker::Music.album, image: "image of sad", genre_id: Genre.all.sample.id, artist_id: Artist.all.sample.id) }


