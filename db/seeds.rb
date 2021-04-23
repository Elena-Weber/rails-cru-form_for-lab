# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Genre.destroy_all
Song.destroy_all

5.times do
    Artist.create(
    name: Faker::Music.band,
    bio: Faker::Quote.famous_last_words
    )
end

3.times do
    Genre.create(
    name: Faker::Music.genre
)
end

15.times do
    Song.create(
    name: Faker::Quote.singular_siegler,
    artist_id: rand(1..5),
    genre_id: rand(1..3)
    )
end

puts "Success"