class Reservation < ApplicationRecord
 has_many :home
 belongs_to :subasta, required: false
end
