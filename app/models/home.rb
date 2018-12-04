class Home < ApplicationRecord
 has_one :reservation
 validates :nombre, :ciudad, :direccion, :canthabitacion, presence: true 
 validates :fecha_ini, uniqueness: true
end
