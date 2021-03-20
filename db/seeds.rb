# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
require 'faker'

Product.destroy_all
Review.destroy_all


50.times do
  product = Product.create!(name: Faker::Food.unique.ingredient,
                            price: Faker::Number.decimal(l_digits: 2),
                            country_of_origin: Faker::Address.country)
  5.times do
    review = Review.create!(author: Faker::DcComics.name,
                            product_id: product.id,
                            rating: Faker::Number.between(from: 1, to: 5),
                            content_body: Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false))
  end
end

p "Created #{Product.count} products and #{Review.count} reviews."
