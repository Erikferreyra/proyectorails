class Home < ApplicationRecord
 has_many :reservation
 validates :nombre, :ciudad, :direccion, :canthabitacion, presence: true
 validates :nombre, uniqueness: true
end
