class HomesController < ApplicationController

  def top
  @genres = Genre.where(status: 1)
  @products = Product.where(sale_status: 0, genre_id: @genres).sample(4)
  end

  def about
  end
end
