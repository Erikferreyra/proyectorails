class ConfirmationController < ApplicationController
  def show
    @reserva=Reservation.find(params[:id])
  end
end
