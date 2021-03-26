require 'rails_helper'

describe 'the add review process' do
  before(:each) do
    @product = Product.new({ name: 'Apple', price: '1.99', country_of_origin: 'United States' })
    @product.save
    user = User.create!(email: 'oliver@queenindustries.com', password: 'dinah_lance')
    login_as(user, scope: :user)
    visit products_path
  end

  it 'adds a new review' do
    click_link 'Apple'
    click_link 'Add a review'
    fill_in 'Rating', with: '5'
    fill_in 'Content body', with: 'These are perfect for practicing shooting my bow. They are also delicious!'
    click_on 'Create Review'
    expect(page).to have_content 'Review successfully added'
    # expect(page).to have_content 'Oliver Queen'
  end

  it 'gives an error when no rating is entered' do
    click_link 'Apple'
    click_on 'Add a review'
    fill_in 'Content body', with: 'These are perfect for practicing shooting my bow. They are also delicious!'
    click_on 'Create Review'
    expect(page).to have_content "Rating can't be blank"
  end

  it 'gives an error when rating is not equal to or less than 5' do
    click_link 'Apple'
    click_on 'Add a review'
    fill_in 'Rating', with: '8'
    fill_in 'Content body', with: 'These are perfect for practicing shooting my bow. They are also delicious!'
    click_on 'Create Review'
    expect(page).to have_content 'Rating must be less than or equal to 5'
  end

  it 'gives an error when no content body is entered' do
    click_link 'Apple'
    click_on 'Add a review'
    fill_in 'Rating', with: '5'
    click_on 'Create Review'
    expect(page).to have_content "Content body can't be blank"
  end

  it 'gives an error when no content body is not 50 characters long' do
    click_link 'Apple'
    click_on 'Add a review'
    fill_in 'Rating', with: '5'
    fill_in 'Content body', with: 'These are perfect for practicing shooting my bow.'
    click_on 'Create Review'
    expect(page).to have_content 'Content body is too short (minimum is 50 characters)'
  end

  it 'gives an error when no content body is over 250 characters long' do
    click_link 'Apple'
    click_on 'Add a review'
    fill_in 'Rating', with: '5'
    fill_in 'Content body', with: 'These apples were amazing. They were juicy with a crisp taste. They are fantastic for shooting practice with my bow. I love that they are green which is my favorite color. I am less of a fan of red apples. Make sure to buy these by the dozen because that is the best deal!'
    click_on 'Create Review'
    expect(page).to have_content 'Content body is too long (maximum is 250 characters)'
  end
end
