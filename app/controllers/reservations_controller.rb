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

  def update
  		@reserva=Reservation.find params[:id]
		@user = current_user
		if @reserva.hotsale != nil
	    	if @reserva.update reserva_params 
	      		redirect_to reservations_path, notice: "Se adjudico la reserva"
        	else
	      		redirect_to reservations_path, notice: "No se pudo adjudicar la reserva"
	    	end
		else
			if(@user.creditos <= 0)
				redirect_to subastas_path, alert: "No dispones de creditos!"
			else
				@user.creditos -= 1
				if (@reserva.update reserva_params) && (@user.save) && (@user.try(:premium?))
	      			redirect_to subastas_path, notice: "Se adjudico la reserva. Creditos restantes: #{@user.creditos}"
	    		else
	      			redirect_to subastas_path, notice: "No se pudo adjudicar la reserva"
	    		end
			end
		end
  end

  def reserva_params
    params.require(:reservation).permit(:adjudicada, :id_adjudicado)
  end
end

