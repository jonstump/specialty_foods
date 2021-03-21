require 'rails_helper'

describe 'the add product process' do
  it 'adds a new product' do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'Spaghetti'
    fill_in 'Price', :with => '3.99'
    fill_in 'Country of origin', :with => 'Italy'
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
    fill_in 'Name', :with => 'Spaghetti'
    fill_in 'Price', :with => '3.99'
    click_on 'Create Product'
    expect(page).to have_content "Country of origin can't be blank"
  end

  it 'gives an error when no price is entered' do
    visit new_product_path
    fill_in 'Name', :with => 'Spaghetti'
    fill_in 'Country of origin', :with => 'Italy'
    click_on 'Create Product'
    expect(page).to have_content "Price can't be blank"
  end
end
