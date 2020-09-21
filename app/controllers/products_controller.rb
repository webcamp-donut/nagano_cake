class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @cart_item = CartItem.new
  end

  def index
    @products = Product.where(sale_status: 0)
  end

end