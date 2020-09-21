class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @cart_item = CartItem.new
    @genres = Genre.where(status: 1)

  end

  def index
    @products = Product.where(sale_status: 0)
    @genres = Genre.where(status: 1)

  end

end