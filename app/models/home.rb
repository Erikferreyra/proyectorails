class Home < ApplicationRecord
 belongs_to :reservations, required: false
 validates :nombre, :ciudad, :direccion, :canthabitacion, presence: true
 validates :nombre, uniqueness: true
end
