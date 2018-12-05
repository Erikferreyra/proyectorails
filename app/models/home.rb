class Home < ApplicationRecord
 has_one :reservation
 validates :nombre, :ciudad, :direccion, :canthabitacion, presence: true 
 validates :nombre, uniqueness: { scope: :year,message: "should happen once per year" }
end
