# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.destroy_all
Artist.destroy_all
User.destroy_all
Song.destroy_all
Favorite.destroy_all

g1 = Genre.create(name: "Rap", image: "text")
a1 = Artist.create(name: "lil guy", age: 10, bio: "very cool", image: "text")
u1 = User.create(name: "Miles") 
s1 = Song.create(name: "Sad Song", image: "image of sad", genre_id: g1.id, artist_id: a1.id)

