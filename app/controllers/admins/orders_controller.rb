class Admins::OrdersController < ApplicationController

	def top
		@dd = Date.today.all_day
		@today_orders = Order.where(created_at: Date.today.all_day)
	end

	def index
		@orders = Order.all
	end

	def show
		@order = Order.find(params[:id])
	end

	def update
    	@order = Order.find(params[:id])
	    @order.update(order_params)
	 	if @order.order_status == "入金確認"
		  	@order.order_products.each do |order_product|
		  		 order_product.update(production_status: 2 )
		     end
		 end
	    redirect_to admins_order_path(@order)
	end


	private
	def order_params
		params.require(:order).permit(:payment, :address, :name, :address_number, :postal_code, :total_fee, :order_status)
	end
end
