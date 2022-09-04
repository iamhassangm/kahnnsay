class Book < ApplicationRecord
  has_and_belongs_to_many :libraries
  searchkick
  
  def self.find_with_libraries(id)
    book = find(id)
    libraries_name = book.libraries.map{|lib| lib.name}
    result = book.attributes
    result["libraries"] = libraries_name
    result
  end
end
