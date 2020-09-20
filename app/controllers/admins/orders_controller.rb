class Admins::OrdersController < ApplicationController

	def top
		@dd = Date.today.all_day
		@today_orders = Order.where(created_at: Date.today.all_day)
	end
end
