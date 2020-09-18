class OrdersController < ApplicationController

  def new
  	@order = Order.new
  	@registerd_address = current_member.shipping_address.all
  end

  def show
  end

  def update
  end

  def confirmation
  	@payment = params[:payment]
  	@select_address = params[:select_address]
  	if @select_address = "member_address"
  		@select_address = "東京都"
  	elsif @select_address = "registerd_address"
  		@select_address = "千葉県"
  	else
  		@select_address = "埼玉県"
  	end
  	# @order = Order.new(order_params)
  	#  if select_address == :new_address
	  #   @pay = "pay"
	  # elsif payment == :member_address
	  #   @pay = "bank"
	  # else
	  # 	@pay = "no"
	  # end

  end

  def check_payment(payment)
	  if select_address == :new_address
	    @pay = "pay"
	  elsif payment == :member_address
	    @pay = "bank"
	  else
	  	@pay = "no"
	  end
	end

private
	def order_params
		params.require(:order).permit(:payment, :address, :name)
  end

end

# <%= f.label(:address, "ご自身の住所", {value: :member_address, style: "display: inline-block;"} ) %>