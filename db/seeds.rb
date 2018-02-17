# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# puts 'Cleaning database...'
# Restaurant.destroy_all

# puts 'Creating restaurants...'
# restaurants_attributes = [
#   {
#     name:         "Metis",
#     address:      "Seminyak",
#     description:  "Best restaurant in Bali",
#     stars:        3,
#     chef:         "Jamie Oliver"
#   },
#   {
#     name:         "La truffière",
#     address:      "4 rue Blainville 75005 Paris",
#     description:  "Une valeur sûre que cette belle maison du 17e et les recettes de Jean-Christophe Rizet",
#     stars:        1,
#     chef:         "Paul Bocuse"

#   },
#   {
#     name:         "Le pré catelan",
#     address:      "route de Suresnes 75016 Paris",
#     description:  "Oeil vif, geste sûr: impossible de distinguer, dans les créations de Frédéric Anton...",
#     stars:        3,
#     chef:         "Heston Blumenthal"
#   }
# ]
# Restaurant.create!(restaurants_attributes)
# puts 'Finished!'

puts "Deleting all restaurants"
Restaurant.destroy_all
puts "Creating 10 restaurants"
10.times do
  restaurants = Restaurant.new(
    name: Faker::Lorem.word,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: Faker::Beer.hop)
  if restaurants.save
    puts restaurants.name + " created!"
  end
end

puts "#{Restaurant.count} restaurants created!"
