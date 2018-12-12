class Hotsale < ApplicationRecord
	belongs_to :reservation 
	validates :reservation_id, uniqueness: true
end
