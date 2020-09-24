class Admins::GenresController < ApplicationController

  def index
  	@genre = Genre.new
		@genres = Genre.page(params[:page]).reverse_order
  end

  def edit
  	@genre = Genre.find(params[:id])
  end

  def update
  	@genre = Genre.find(params[:id])
  	@genre.update(genre_params)
  	redirect_to admins_genres_path
  end

  def create
  	@genre = Genre.new(genre_params)
  	@genre_status = params[:status]
  	@genre.save
  	redirect_to request.referer
  end

  private
  	def genre_params
  		params.require(:genre).permit(:name, :status)
  	end
end
