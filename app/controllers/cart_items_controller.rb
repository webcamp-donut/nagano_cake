class CartItemsController < ApplicationController
  before_action :authenticate_member!, except: [:create]

  def index
    @cart_items = current_member.cart_items
    @products = Product.where(params[:product_id])
  end

  def update
    @cart_item = CartItem.find(params[:id])
    @cart_item.update(cart_item_params)
    redirect_to request.referer
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to request.referer
  end

  def create
    if member_signed_in?
      @cart_item = current_member.cart_items.new(cart_item_params)
      item = CartItem.find_by(product_id: @cart_item.product_id)
      if item
        redirect_to request.referer, alert: "※既にカートに入っています"
      else
        @cart_item.save
        redirect_to cart_items_path
      end
    else
       redirect_to request.referer, alert: "※ログインして下さい"
    end
  end

  def reset
    current_member.cart_items.destroy_all
    redirect_to request.referer
  end

private
  def cart_item_params
    params.require(:cart_item).permit(:product_id, :member_id, :quantity)
  end

end

