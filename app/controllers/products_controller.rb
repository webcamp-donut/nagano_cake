class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @cart_item = CartItem.new
    @genres = Genre.where(status: 1)

  end

  def index
    @products = Product.all
    @genres = Genre.where(status: 1)
  end
end
