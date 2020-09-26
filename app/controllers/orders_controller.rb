class OrdersController < ApplicationController

  def new
  	@order = Order.new
    @shipping_addresses = current_member.shipping_addresses
  end

  def confirmation
    @order = Order.new
    @cart_items = current_member.cart_items

  	@payment = params[:payment]
  	@select_address = params[:select_address]
  	if @select_address == "member_address"
          @order.postal_code = current_member.postal_code
          @order.address = current_member.address
          @order.name = current_member.last_name + current_member.first_name
    elsif @select_address == "registered_address"
          @address_number = params[:address_number]
       if @shipping_address = ShippingAddress.find_by(@address_number)
          @order.postal_code = @shipping_address.postal_code
          @order.address = @shipping_address.address
          @order.name = @shipping_address.name
       end
    else
          @order.postal_code = params[:postal_code]
          @order.address = params[:address]
          @order.name = params[:name]
          session[:new_address] = "new_address"
    end
  end

  def create
      @order = Order.new(order_params)
      @order.member_id = current_member.id
      @order.save
  # 注文商品としてメンバーに紐づけて保存
    current_member.cart_items.each do |cart_item|
      @order_product = OrderProduct.new
      @order_product.product_id = cart_item.product_id
      @order_product.order_id = @order.id
      @order_product.tax_included_price = include_tax(cart_item.product.tax_excluded_price)
      @order_product.quantity = cart_item.quantity
      @order_product.save
    end
  #新規配送先の登録
    if session[:new_address].present?
      @shipping_address = ShippingAddress.new
      @shipping_address.member_id = current_member.id
      @shipping_address.name = @order.name
      @shipping_address.postal_code = @order.postal_code
      @shipping_address.address = @order.address
      @shipping_address.save
    end
      current_member.cart_items.destroy_all
      redirect_to orders_thank_path
  end

  def thank
  end

  def index
    @orders = current_member.orders.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def include_tax(price)
      price * 1.08
    end

private
	def order_params
		params.require(:order).permit(:payment, :address, :name, :address_number, :postal_code, :total_fee, :order_status)
  end

end

# <%= f.label(:address, "ご自身の住所", {value: :member_address, style: "display: inline-block;"} ) %>