class Home < ApplicationRecord
 has_one :reservation
 validates :nombre, :ubicacion, :canthabitaciones, presence: true 
end
