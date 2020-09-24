class Admins::ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
   if @product.save
     flash[:success] = "商品情報が登録されました。"
     redirect_to admins_product_path(@product)
   else
     render 'new'
   end
  end

  def index
    @products = Product.page(params[:page]).reverse_order
    @genre = Genre.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
  if @product.update(product_params)
    flash[:success] = "商品情報が更新されました。"
    redirect_to admins_product_path(@product)
  else
    render "edit"
  end
end
  private
    def product_params
        params.require(:product).permit(:name, :explanation, :tax_excluded_price, :sale_status, :genre_id, :image)
    end

end
