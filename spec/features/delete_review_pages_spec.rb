require 'rails_helper'

describe 'the delete review process' do

  it 'deletes a product' do
    @product = Product.new({ :name => "Apple", :price => "1.99", :country_of_origin => "United States" })
    @product.save
    visit products_path
    click_on 'Apple'
    click_link 'Add a review'
    fill_in 'Author', :with => 'Oliver Queen'
    fill_in 'Rating', :with => '5'
    fill_in 'Content body', :with => 'These are perfect for practicing shooting my bow. They are also delicious!'
    click_on 'Create Review'
    click_link 'Oliver Queen'
    click_on 'Delete review'
    expect(page).to have_content 'Review successfully deleted'
    expect(page).to have_no_content 'Oliver Queen'
  end
end
