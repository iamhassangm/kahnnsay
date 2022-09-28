class Api::V1::SearchBooksController < ApplicationController
  def create
    @result = Book.search(params[:query])
    render json: Array(@result).map{|r| r.id}
  end
end