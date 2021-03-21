require 'rails_helper'

describe 'test the edit product process' do
  before(:each) do
    @product = Product.new({ :name => 'Apple', :price => '1.99', :country_of_origin => 'United States' })
    @product.save
    visit products_path
  end

  it 'edits a product' do
    click_link 'Apple'
    click_link 'Edit'
    fill_in 'Name', :with => 'Orange'
    fill_in 'Price', :with => '3.99'
    fill_in 'Country of origin', :with => 'Italy'
    click_on 'Update Product'
    expect(page).to have_content 'Product successfully updated'
    expect(page).to have_content 'Orange'
    click_on 'Orange'
    expect(page).to have_content '$3.99'
    expect(page).to have_content 'Italy'
  end

  it 'gives an error when no name is entered' do
    click_link 'Apple'
    click_link 'Edit'
    fill_in 'Name', :with => ' '
    fill_in 'Price', :with => '3.99'
    fill_in 'Country of origin', :with => 'Italy'
    click_on 'Update Product'
    expect(page).to have_content "Name can't be blank"
  end

  it 'gives an error when no price is entered' do
    click_link 'Apple'
    click_link 'Edit'
    fill_in 'Name', :with => 'Orange'
    fill_in 'Price', :with => ' '
    fill_in 'Country of origin', :with => 'Italy'
    click_on 'Update Product'
    expect(page).to have_content "Price can't be blank"
  end

  it 'gives an error when no Country of origin is entered' do
    click_link 'Apple'
    click_link 'Edit'
    fill_in 'Name', :with => 'Orange'
    fill_in 'Price', :with => '3.99'
    fill_in 'Country of origin', :with => '  '
    click_on 'Update Product'
    expect(page).to have_content "Country of origin can't be blank"
  end
end
