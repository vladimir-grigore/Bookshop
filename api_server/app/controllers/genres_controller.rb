class GenresController < ApplicationController

  def index
    @genres = Genre.all
    render json: @genres
  end

  def show
    @genre = Genre.find(params[:id])
    @books = Book.where(genre_id: @genre.id)
    render json: @books
  end

end
