class GenresController < ApplicationController
  def index
    @genres = HTTParty.get('http://localhost:3000/api/genres', headers: {'Content-Type' => 'application/json'})
  end

  def show
    @genre = HTTParty.get('http://localhost:3000/api/genres/' + params[:id], headers: {'Content-Type' => 'application/json'})
  end
end
