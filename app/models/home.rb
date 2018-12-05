class Home < ApplicationRecord
 has_one :reservation
 validates :nombre, :ciudad, :direccion, :canthabitacion, presence: true 
 validates :nombre, :uniqueness =>{ message: "No puede dejarse vacío" }
end
