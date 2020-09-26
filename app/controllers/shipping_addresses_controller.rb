class ShippingAddressesController < ApplicationController
  before_action :authenticate_member!
  def index
    @shipping_address = ShippingAddress.new
    @shipping_addresses = current_member.shipping_addresses
  end

  def create
    @shipping_address = ShippingAddress.new(shipping_address_params)
    @shipping_address.member_id = current_member.id
    if @shipping_address.save
      redirect_to request.referer
    else
      render :index
    end
  end

  def edit
    @shipping_address = ShippingAddress.find(params[:id])
  end

  def update
    shipping_address = ShippingAddress.find(params[:id])
    shipping_address.update(shipping_address_params)
    redirect_to shipping_addresses_path
  end

  def destroy
    shipping_address = ShippingAddress.find(params[:id])
    shipping_address.destroy
    redirect_to request.referer
  end

private
  def shipping_address_params
    params.require(:shipping_address).permit(:postal_code, :address, :name)
  end

end
