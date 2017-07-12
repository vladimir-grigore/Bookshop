class GenresController < ApplicationController

  def index
    @genres = Genre.all
    pp @genres
  end

  def show
    @genre = Genre.find(params[:id])
    @books = Book.where(genre_id: @genre.id)
    pp @books
  end
  
end
