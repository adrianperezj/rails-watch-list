# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "--------------------"
puts "Cleaning database"
Movie.destroy_all

puts "--------------------"
puts "Creating movies, hold still..."
20.times do
  movie = Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Lorem.paragraph,
    poster_url: Faker::Internet.url,
    rating: Faker::Number.between(from: 1, to: 10).to_f
  )
end
puts "--------------------"
puts "You're all set, boy."
