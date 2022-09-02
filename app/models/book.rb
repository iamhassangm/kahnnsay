class Book < ApplicationRecord
  belongs_to :library
  searchkick
  
  
end
