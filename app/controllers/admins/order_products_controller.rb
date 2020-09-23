class Admins::OrderProductsController < ApplicationController
  def update
      @order_product = OrderProduct.find(params[:id])
      @order_products = OrderProduct.where(params[:order_id])
       @order_product.update(order_product_params)
      
            if @order_product.production_status == "製作中"
           	    @order_product.order.update(order_status: 3)
           	elsif @order_products.each do |order_product|
           		  	order_product.production_status == "製作完了"
           	      end
           	  if @order_products.where(order_id: params[:order_product][:order_id]).all?{ |order_product| order_product.production_status == "製作完了" }
                 @order_product.order.update(order_status: 4)
              end
           end

      redirect_to admins_orders_path
  end

  private
	def order_product_params
		params.require(:order_product).permit(:production_status)
  end
end