class Subasta < ApplicationRecord
  has_many :reservation
  validates :reservation_id, uniqueness:true 
end
