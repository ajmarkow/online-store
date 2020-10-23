require 'rails_helper'

describe "the add a product process" do
    it "adds a product" do
      visit new_product_path
      fill_in 'product_name', :with => "Latte Larry's Special Beans"
      fill_in 'product_cost', :with => "15.00"
      fill_in 'product_country_of_origin', :with => "Mexico"
      click_button 'Create Product'
      visit products_path
      expect(page).to have_content "Latte Larry's Special Beans"
    end
  end
