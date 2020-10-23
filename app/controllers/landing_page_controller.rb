class LandingPageController < ApplicationController
  def index
    @products = Product.last(3)
    # @mostpopular = Review.where(:rating).maximum(:rating)
    @reviews = Review.limit(3)
  end
end
