class Api::V1::SearchBooksController < ApplicationController
  def create
    @result = Book.send("find_by", params[:query_type], params[:query])
    
    render json: @result 
  end
end