class ReviewsController < ApplicationController
  def index
    # Code for listing all reviews goes here.
    @reviews = Review.all
    render :index
  end

  def new
    # Code for new review form goes here.
    @review = Review.new
    @products = Product.all
    render :new
  end

  def create
    # Code for creating a new review goes here.
    @review = Review.new(review_params)
    @products = Product.all
    if @review.save
      redirect_to reviews_path
    else
      render :new
    end
  end

  def edit
    # Code for edit review form goes here.
    @review = Review.find(params[:id])
  end

  def show
    # Code for showing a single review goes here.
    @review = Review.find(params[:id])
    render :show
  end

  def update
    # Code for updating an review goes here.
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to reviews_path
    else
      render :edit
    end
  end

  def destroy
    # Code for deleting an review goes here.
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_path
  end

  def find(id)
    # Code for showing a single review goes here.
    @product = Review.find(self.product_id)
    render(:product)
  end

  private

  def review_params
    params.require(:review).permit(:author, :content_body, :rating, :review_id)
  end
end
