class Reservation < ApplicationRecord
 has_many :homes
 belongs_to :auction, required: false
end
