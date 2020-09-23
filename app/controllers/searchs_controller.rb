class SearchsController < ApplicationController
	
	def search
	@products = Product.search(params[:search])
	@genres = Genre.all
    end

end
