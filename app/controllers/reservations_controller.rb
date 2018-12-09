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
    @reserva=Reservation.find(params[:id])

    @user = current_user
    @user.creditos -= 1


    if (@reserva.update reserva_params) && (@user.save)
      redirect_to subastas_path, notice: "Se adjudico la reserva"
    else
      redirect_to subastas_path, notice: "No se pudo adjudicar la reserva"
    end
  end

  def reserva_params
    params.require(:reservation).permit(:adjudicada, :id_adjudicado)
  end
end
