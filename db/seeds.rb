# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
  restaurant = Restaurant.create!({ name: Faker::Lorem.word, address: Faker::Address.street_address, phone_number:Faker::PhoneNumber.cell_phone, category: ["chinese", "italian", "japanese", "french", "belgian"].sample })
  5.times do
    Review.create!(restaurant: Faker::Lorem.word, content: Faker::Lorem.word, rating: (0..5).to_a.sample)
  end
end

# restaurants = Restaurant.create([{ name: 'Barbazinck', address: 'Malakoff', phone_number:'01.36.35.34.39', category: 'french' }, {  name: 'jackichan', address: 'paris 13', phone_number:'01.38.39.39.39', category: 'chinese'}, {  name: 'luidgi pizza', address: 'paris 15', phone_number:'01.37.39.39.39', category: 'italian'}, {  name: 'la frite', address: 'paris 10', phone_number:'01.36.39.39.39', category: 'belgian'}, {  name: 'SUMO SUSHI', address: 'paris 12', phone_number:'01.32.39.39.39', category: 'japanese'}])

p restaurants

# restaurants.each do |restaurant|
#   Review.create(restaurant: restaurant, content: "Amazing", rating: 5)
#   Review.create(restaurant: restaurant, content: "Top", rating: 4)
#   Review.create(restaurant: restaurant, content: "Medium", rating: 3)
#   Review.create(restaurant: restaurant, content: "bof", rating: 2)
#   Review.create(restaurant: restaurant, content: "Bad", rating: 1)
# end
