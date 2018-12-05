class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nombre,:apellido,:fechanac,presence: true
  validates :numtarjeta, presence: true,numericality: { only_integer: true },length: { minimum:16,maximum:17 }
end
