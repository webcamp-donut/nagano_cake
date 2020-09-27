class SearchsController < ApplicationController

	def search
		@products = Product.search(params[:search]).page(params[:page]).reverse_order
		if @products.present?
			@flg = 1
		else
			@members = Member.search(params[:search]).page(params[:page]).reverse_order
			if @members.present?
				@flg = 2
			end
    	end
    	@genres = Genre.all
    end
end
