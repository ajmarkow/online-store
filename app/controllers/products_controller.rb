class ProductsController < ApplicationController
  def index
    # Code for listing all reviews goes here.
    @products = Product.all
    render :index
  end

  def new
    # Code for new review form goes here.
    @product = Product.new
    render :new
  end

  def create
    # Code for creating a new review goes here.
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    # Code for edit review form goes here.
    @product = Product.find(params[:id])
  end

  def show
    # Code for showing a single review goes here.
    @product = Product.find(params[:id])
    render :show
  end

  def update
    # Code for updating an review goes here.
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    # Code for deleting an review goes here.
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def find(id)
    # Code for showing a single review goes here.
    @product = Product.find(id.to_i)
    render :show
  end
  private

  def product_params
    params.require(:product).permit(:name, :country_of_origin, :cost, :product_id)
  end
end
