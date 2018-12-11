class Home < ApplicationRecord
 has_many :reservations
 validates :nombre, :ciudad, :direccion, :canthabitacion, presence: true
 validates :nombre, uniqueness: true
end
