class Reservation < ApplicationRecord
belongs_to :home
 belongs_to :subasta, required: false


end
