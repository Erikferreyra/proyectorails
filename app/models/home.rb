class Home < ApplicationRecord
 has_one :reservation
 validates :nombre, :ciudad, :direccion, :canthabitacion, presence: true 
 validates :nombre, uniqueness: true, :message => "blah blah blah" 
end
