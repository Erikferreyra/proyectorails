class Home < ApplicationRecord
 has_one :reservation
 validates :nombre, :ciudad, :direccion, :canthabitacion, presence: true 
 validates :nombre, uniqueness: true,message: "El nombre de la residencia ya existee" 
end
