class Api::V1::Libraries::BookIdsController < ApplicationController
  before_action :set_books, only: %i[ index ]
  def index
    render json: @books.ids
  end
  
  private
  
  def set_books
    library = Library.find(params[:library_id])
    @books = library.books
  end
end