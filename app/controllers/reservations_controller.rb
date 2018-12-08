class ReservationsController < ApplicationController
	def index
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

	def update
		@reserva = Reservation.find(params[:id])

		if @reserva.update(adjudicada:true, id_adjudicado:current_user)
			redirect_to user_update_path
		else
			redirect_to subastas_path, :notice => "No se pudo"
		end
	end
end
