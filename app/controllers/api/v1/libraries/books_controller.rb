class Api::V1::Libraries::BooksController < ApplicationController
  before_action :set_books, only: %i[ index ]
  
  def index
    render json: @books
  end
  
  private
  
  def set_books
    library = Library.find(params[:library_id])
    @books = library.books
  end
end