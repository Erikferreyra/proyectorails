class AdmsController < ApplicationController
  def index
      @users=User.all
  end

  def completar_sub
    @subastas = Subasta.all
  end

  def comprobar
     @ids = params[:id]
     @subasta = Subasta.find(@ids)
     @usu = User.find(@subasta.usuario_id)
     @reserva = Reservation.find(@subasta.reservation_id)
     @home = Home.find(@reserva.home_id)
  end

end
