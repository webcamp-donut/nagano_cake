class OrderProductsController < ApplicationController
  def update
    @order = Order.find(params[:id])
    @order_product = OrderProduct.find(params[:id])
    if @order_product.update(order_product_params)
      redirect_to admins_orders_path
    else
      render
  end
  if @order.order_status == 2
     @order_product.production_status = 2
     @order_product.update(order_product_params)
 end
  end

  private
  def order_product_params
    params.require(:order_product).permit(:production_status)
  end
end
