class BooksController < ApplicationController
  def index
    @books = HTTParty.get('http://localhost:3000/api/books', headers: {'Content-Type' => 'application/json'})
  end

  def show
    @book = HTTParty.get('http://localhost:3000/api/books/' + params[:id], headers: {'Content-Type' => 'application/json'})
  end
end
