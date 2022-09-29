class Book < ApplicationRecord
  has_and_belongs_to_many :libraries
  searchkick
  
  def self.find_with_libraries(id)
    book = find(id)
    result = book.attributes
    result["libraries"] = book.libraries
    result
  end
end
