class Home < ApplicationRecord
 has_one :reservation
 validates :nombre, :ubicacion, :canthabitacion, presence: true 
end
