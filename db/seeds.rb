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

g1 = Genre.create(name: Faker::Music.genre, image: "text")
g2 = Genre.create(name: Faker::Music.genre, image: "text")
g3 = Genre.create(name: Faker::Music.genre, image: "text")
a1 = Artist.create(name: Faker::Music.band, age: 10, bio: "very cool", image: "text")
a2 = Artist.create(name: Faker::Music.band, age: 10, bio: "very cool", image: "text")
a3 = Artist.create(name: Faker::Music.band, age: 10, bio: "very cool", image: "text")
u1 = User.create(name: "Miles") 
s1 = Song.create(name: Faker::Music.album, image: "image of sad", genre_id: g1.id, artist_id: a1.id)
s2 = Song.create(name: Faker::Music.album, image: "image of sad", genre_id: g2.id, artist_id: a2.id)
s3 = Song.create(name: Faker::Music.album, image: "image of sad", genre_id: g3.id, artist_id: a3.id)

