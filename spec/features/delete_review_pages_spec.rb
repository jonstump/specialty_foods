require 'rails_helper'

describe 'the delete review process' do
  it 'deletes a product' do
    user = User.create!(email: 'superman@email.com', password: 'krypton', admin: true)
    login_as(user, scope: :user)
    @product = Product.new({ name: 'Apple', price: '1.99', country_of_origin: 'United States' })
    @product.save
    visit products_path
    click_on 'Apple'
    click_link 'Add a review'
    fill_in 'Rating', with: '5'
    fill_in 'Content body', with: 'These are perfect for practicing shooting my bow. They are also delicious!'
    click_on 'Create Review'
    click_link '1'
    click_on 'Delete review'
    expect(page).to have_content 'Review successfully deleted'
  end
end
