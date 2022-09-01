class Api::V1::SearchBooksController < ApplicationController
  def create
    @result = Book.search(params[:query])
    
    render json: @result
  end
end