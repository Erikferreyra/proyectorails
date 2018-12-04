class Home < ApplicationRecord
 has_one :reservation
 validates :nombre, :ciudad, :direccion, :canthabitacion, presence: true 
 validates :id_reservation, uniqueness: true
end
