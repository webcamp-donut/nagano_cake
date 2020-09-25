class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @cart_item = CartItem.new
    @genres = Genre.where(status: 1)

  end

  def index

    @genres = Genre.where(status: 1)
    @products = Product.page(params[:page]).reverse_order.where(sale_status: 0, genre_id: @genres)
    @all_products = Product.where(sale_status: 0, genre_id: @genres)
  end

end