class Subasta < ApplicationRecord
  has_many :reservation
  validates :fecha_ini, uniqueness:true 
end
