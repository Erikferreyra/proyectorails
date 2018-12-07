class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nombre,:apellido,:fechanac,:fechavenc,:titulartarjeta,:tipotarjeta,presence: true
  validates :numtarjeta, presence: true,numericality: { only_integer: true },length: { minimum:16,maximum:16}
  validates :cvv, presence:true,numericality: { only_integer: true },length: {minimum:3,maximum:3}
  validates :fechavenc, default: false
  validate :mayor_de_18
  validate :tarjeta_vencida

  def mayor_de_18
  	 if fechanac > (Date.today-18.year)
  	 		errors.add(:fechanac, "Debe ser mayor de edad para registrarse")
 	   end
  end

  def tarjeta_vencida
      if fechavenc <= (Date.today)
  			errors.add(:fechavenc, "La tarjeta se encuentra vencida,ingrese otra tarjeta")
  		end
  end
end
