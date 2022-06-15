# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "json"
require "open-uri"

url = "https://tmdb.lewagon.com/movie/top_rated"
top_movies = URI.open(url).read
results = JSON.parse(top_movies)

results['results'].each do |result|
  Movie.create(title: result['title'], overview: result['overview'], poster_url: "https://image.tmdb.org/t/p/original/#{result['poster_path']}", rating: result['vote_average'])
end
