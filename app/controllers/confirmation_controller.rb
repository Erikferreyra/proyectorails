class ConfirmationController < ApplicationController
  def index
    @id=params[:id]
    @reserva=Reservation.find(@id)
  end
  def show
  	@id=params[:id]
    @reserva=Reservation.find(@id)
  end  
end
