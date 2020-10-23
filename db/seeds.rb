# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Product.destroy_all
require 'faker'

50.times do |index|
  Product.create!(name: Faker::Food.dish, cost: Faker::Number.decimal(l_digits:2), country_of_origin: Faker::Address.country)          
end        
# Review.destroy_all
250.times do |index|
  Review.create!(author: Faker::Name.name, content_body: Faker::Lorem.paragraph_by_chars(number: 106, supplemental: false), rating: Faker::Number.between(from:1, to: 5), product_id: 5)
end