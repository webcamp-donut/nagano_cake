class CartItemsController < ApplicationController

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
    @cart_item = current_member.cart_items.new(cart_item_params)
    @cart_item.save
    redirect_to cart_items_path
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