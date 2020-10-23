class LandingPageController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]
  def index
    @products = Product.last(3)
    # @mostpopular = Review.where(:rating).maximum(:rating)
    @reviews = Review.top3
  end

  def not_authorized
  end
end
