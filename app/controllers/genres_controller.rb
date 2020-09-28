class GenresController < ApplicationController

  def show
  	@genres = Genre.where(status: 1)
  	@products = Product.page(params[:page]).reverse_order.where(sale_status: 0, genre_id: params[:id])
  	@genre = Genre.find(params[:id])
  end
end
