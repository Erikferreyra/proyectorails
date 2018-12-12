class Subasta < ApplicationRecord
  has_one :reservations
  validates :reservation_id, uniqueness: true
end
