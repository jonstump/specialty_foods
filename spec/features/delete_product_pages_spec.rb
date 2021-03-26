require 'rails_helper'

describe 'the delete product process' do
  it 'deletes a product' do
    user = User.create!(email: 'superman@email.com', password: 'krypton', admin: true)
    login_as(user, scope: :user)
    @product = Product.new({ name: 'Apple', price: '1.99', country_of_origin: 'United States' })
    @product.save
    visit products_path
    click_on 'Apple'
    click_on 'Delete'
    expect(page).to have_content 'Product successfully deleted'
    expect(page).to have_no_content 'Apple'
  end
end
