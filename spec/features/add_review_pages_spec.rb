require 'rails_helper'

describe "the add review process" do
  it "adds a new review" do
    @product = Product.new({ :name => "Apple", :price => "1.99", :country_of_origin => "United States" })
    @product.save
    visit products_path
    click_link 'Apple'
    click_link 'Add a review'
    fill_in 'Author', :with => 'Oliver Queen'
    fill_in 'Rating', :with => '5'
    fill_in 'Content body', :with => 'These are perfect for practicing shooting my bow. They are also delicious!'
    click_on 'Create Review'
    expect(page).to have_content 'Review successfully added'
    expect(page).to have_content 'Oliver Queen'
  end

  it "gives an error when no author is entered" do
    @product = Product.new({ :name => "Apple", :price => "1.99", :country_of_origin => "United States" })
    @product.save
    visit products_path
    click_link 'Apple'
    click_on 'Add a review'
    click_on 'Create Review'
    expect(page).to have_content "Author can't be blank"
  end

  it "gives an error when no rating is entered" do
    @product = Product.new({ :name => "Apple", :price => "1.99", :country_of_origin => "United States" })
    @product.save
    visit products_path
    click_link 'Apple'
    click_on 'Add a review'
    fill_in 'Author', :with => 'Oliver Queen'
    fill_in 'Content body', :with => 'These are perfect for practicing shooting my bow. They are also delicious!'
    click_on 'Create Review'
    expect(page).to have_content "Rating can't be blank"
  end

  it "gives an error when no content body is entered" do
    @product = Product.new({ :name => "Apple", :price => "1.99", :country_of_origin => "United States" })
    @product.save
    visit products_path
    click_link 'Apple'
    click_on 'Add a review'
    fill_in 'Author', :with => 'Oliver Queen'
    fill_in 'Rating', :with => '5'
    click_on 'Create Review'
    expect(page).to have_content "Content body can't be blank"
  end
end
