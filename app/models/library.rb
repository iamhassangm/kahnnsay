class Library < ApplicationRecord
  has_and_belongs_to_many :books
  has_one :location
  
  def self.find_with_location(id)
    lib = find(id)
    location = Location.find(lib.location_id)
    result = lib.attributes
    result["location"] = location
    result
  end
end
