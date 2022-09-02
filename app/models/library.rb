class Library < ApplicationRecord
  has_one :location
  has_many :books
end
