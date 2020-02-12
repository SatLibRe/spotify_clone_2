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

image_arr = [
    "https://media.istockphoto.com/photos/group-of-cheerful-diverse-friends-in-the-park-picture-id958682698?k=6&m=958682698&s=612x612&w=0&h=pzACQnArO-EvwsEMqp2upmZ5Zmuoh3YDHhPkHdCg2os=",
    "https://peopledotcom.files.wordpress.com/2019/11/77149507_420647148599835_4561668129413349875_n.jpg?w=1080&h=810",
    "https://images.pexels.com/photos/1595387/pexels-photo-1595387.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
]

10.times { Genre.create(name: Faker::Music.genre, image: "text") }

50.times { Artist.create(name: Faker::Music.band, age: 10, bio: Faker::Lorem.paragraphs(number: 1), image: image_arr.sample) }

User.create(name: "Miles", password: "123") 

75.times { Song.create(name: Faker::Music.album, image: "image of sad", genre_id: Genre.all.sample.id, artist_id: Artist.all.sample.id) }


