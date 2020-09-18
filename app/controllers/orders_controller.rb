class OrdersController < ApplicationController

  def new
  	@order = Order.new
    @shipping_addresses = current_member.shipping_addresses.all
  end

  def show
  end

  def update
  end

  def confirmation
    # @orders = Order.new(order_params)

  	@payment = params[:payment]
  	@select_address = params[:select_address]
  	if @select_address = "member_address"
  		@select_address = current_member.postal_code + current_member.address + "\n" + current_member.last_name + current_member.first_name
  	elsif @select_address = "registerd_address"
  		@select_address = @shipping_address.full_address
  	else
  		@select_address = "#{order.postal_code} #{order.address}  \r #{order.name}"
  	end
  end

  def create
  end

	end

private
	def order_params
		params.require(:order).permit(:payment, :address, :name)
  end

end

# <%= f.label(:address, "ご自身の住所", {value: :member_address, style: "display: inline-block;"} ) %>