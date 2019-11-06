require 'faker'
require 'unsplash'
require 'json'
require 'open-uri'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all

4.times do
  url = 'https://api.unsplash.com/photos/random/?house&client_id=03521c1db0902583c991a69d2663bddd721f4d3ae20c9c637b0bcc5eb42d7a7a'
  image_serialized = open(url).read
  image = JSON.parse(image_serialized)

  Flat.create!(
    name: Faker::Team.mascot,
    address: Faker::Address.full_address,
    image_url: image['urls']['small'],
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas enim sint ad officiis? Neque ipsa odit modi omnis tempore maiores fugiat, deleniti architecto ab consequuntur earum, quidem vitae id voluptas.',
    price_per_night: (10..100).to_a.sample,
    number_of_guests: (1..6).to_a.sample
  )
end
