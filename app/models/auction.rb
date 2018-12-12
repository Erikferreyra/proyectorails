class Auction < ApplicationRecord
  has_many :reservations
  validates :reservation_id, uniqueness:true
end
