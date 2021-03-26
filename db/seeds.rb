require 'faker'

Product.destroy_all
Review.destroy_all

50.times do
  product = Product.create!(name: Faker::Food.unique.ingredient,
                            price: Faker::Number.decimal(l_digits: 2),
                            country_of_origin: Faker::Address.country)
  5.times do
    user = User.create!(email: Faker::Internet.email, password: Faker::Internet.password)
    review = Review.create!(user_id: user.id,
                            product_id: product.id,
                            rating: Faker::Number.between(from: 1, to: 5),
                            content_body: Faker::Lorem.paragraph_by_chars(number: 150, supplemental: false))
  end
end

p "Created #{Product.count} products and #{Review.count} reviews."
