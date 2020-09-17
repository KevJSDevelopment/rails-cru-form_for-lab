require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all
Song.delete_all
Genre.delete_all

5.times do 
    artist = Artist.create(name: Faker::Name.unique.name , bio: Faker::Music.unique.album) 
    genre = Genre.create(name: Faker::Music.unique.genre) 
    Song.create(name: Faker::Music::GratefulDead.song, artist_id: artist.id, genre_id: genre.id)
end