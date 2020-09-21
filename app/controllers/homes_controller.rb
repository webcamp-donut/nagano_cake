class HomesController < ApplicationController

  def top
  @genres = Genre.where(status: 1)

  end

  def about
  end
end
