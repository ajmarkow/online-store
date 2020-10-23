require "rails_helper"

describe "the add a review process" do
  it "adds a review" do
    visit new_product_path
    fill_in "product_name", :with => "Arepas"
    fill_in "product_cost", :with => "15.00"
    fill_in "product_country_of_origin", :with => "Mexico"
    click_button "Create Product"
    visit new_review_path
    select "Arepas", from: "review[product_id]"
    fill_in "review_author", :with => "Larry David"
    fill_in "review_content_body", :with => "These are the best beans from Mexico.  My friend Leon and I bought them annd they are excellent. Mocha Joe's beans do not compare."
    fill_in "review_rating", :with => "5"
    click_button "Create Review"
    visit reviews_path
    expect(page).to have_content "Larry David"
  end
end
