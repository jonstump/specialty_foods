require 'rails_helper'

describe 'the add product process as admin' do
  before(:each) do
    user = User.create!(email: 'superman@email.com', password: 'krypton', admin: true)
    login_as(user, scope: :user)
  end
  it 'adds a new product' do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', with: 'Spaghetti'
    fill_in 'Price', with: '3.99'
    fill_in 'Country of origin', with: 'Italy'
    click_on 'Create Product'
    expect(page).to have_content 'Product successfully created'
    expect(page).to have_content 'Spaghetti'
  end

  it 'gives an error when no name is entered' do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end

  it 'gives an error when no Country of origin is entered' do
    visit new_product_path
    fill_in 'Name', with: 'Spaghetti'
    fill_in 'Price', with: '3.99'
    click_on 'Create Product'
    expect(page).to have_content "Country of origin can't be blank"
  end

  it 'gives an error when no price is entered' do
    visit new_product_path
    fill_in 'Name', with: 'Spaghetti'
    fill_in 'Country of origin', with: 'Italy'
    click_on 'Create Product'
    expect(page).to have_content "Price can't be blank"
  end
end

describe 'tests that a regular user cannot add a product' do
  before(:each) do
    user = User.create!(email: 'oliver@queenindustries.com', password: 'dinah_lance')
    login_as(user, scope: :user)
  end
  it 'does not show add product for a standard user' do
    visit products_path
    expect(page).to have_no_content 'create new product'
  end
end
