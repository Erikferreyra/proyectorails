class ReservationsController < ApplicationController
	def index
		@reservas=Reservation.all
		@subastas=Subasta.all 
	end
	def new
		nombre = params[:nombre]
		id = params[:id]
		create(nombre,id)
	    redirect_to url_for(action: 'index',controller: 'homes')
	end
	def create(a,b)
	     reserva=Reservation.new
	     reserva.nombre = a
	     reserva.home_id = b
	     reserva.save
  	end

end
