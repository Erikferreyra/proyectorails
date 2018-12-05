class Subasta < ApplicationRecord
  has_many :reservation
  validates :id_reservation, uniqueness: true
end
