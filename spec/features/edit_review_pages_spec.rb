require 'rails_helper'

describe 'test the edit review process' do
  before(:each) do
    @product = Product.new({ name: 'Apple', price: '1.99', country_of_origin: 'United States' })
    @product.save
    user = User.create!(email: 'superman@email.com', password: 'krypton', admin: true)
    login_as(user, scope: :user)
    visit products_path
    click_link 'Apple'
  end

  it 'edits a Review' do
    click_link 'Add a review'
    fill_in 'Rating', with: '5'
    fill_in 'Content body', with: 'These are perfect for practicing shooting my bow. They are also delicious!'
    click_on 'Create Review'
    click_link '1'
    click_link 'Edit review'
    fill_in 'Rating', with: '4'
    fill_in 'Content body', with: 'Wow these are the best apples ever. They are super crisp and delicious!'
    click_on 'Update Review'
    expect(page).to have_content 'Review successfully updated'
    click_on '1'
    expect(page).to have_content '4'
    expect(page).to have_content 'Wow these are the best apples ever. They are super crisp and delicious!'
  end

  it 'gives an error when no price is entered' do
    click_link 'Add a review'
    fill_in 'Rating', with: '5'
    fill_in 'Content body', with: 'These are perfect for practicing shooting my bow. They are also delicious!'
    click_on 'Create Review'
    click_link '1'
    click_link 'Edit review'
    fill_in 'Rating', with: ' '
    click_on 'Update Review'
    expect(page).to have_content "Rating can't be blank"
  end

  it 'gives an error when no content body is entered' do
    click_link 'Add a review'
    fill_in 'Rating', with: '5'
    fill_in 'Content body', with: 'These are perfect for practicing shooting my bow. They are also delicious!'
    click_on 'Create Review'
    click_link '1'
    click_link 'Edit review'
    fill_in 'Content body', with: '  '
    click_on 'Update Review'
    expect(page).to have_content "Content body can't be blank"
  end
end
