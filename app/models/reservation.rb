class Reservation < ApplicationRecord
 belongs_to :home
 has_many :subastas
end
