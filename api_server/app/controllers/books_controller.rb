class BooksController < ApplicationController
  
  def index
    @books = Book.all
    pp @books
  end

  def show
    @book = Book.find(params[:id])
    pp @book
  end
  
end
