class Reservation < ApplicationRecord
 belongs_to :homes
 belongs_to :subasta, required: false
end
