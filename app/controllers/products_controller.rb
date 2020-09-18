class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @tax_in_price = @product.tax_excluded_price * 1.08
  end

  def index
    @products = Product.all
  end
end
