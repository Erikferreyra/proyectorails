class SubastasController < ApplicationController
    def index
    	 @reservas=Reservation.all
    	 @subastas=Subasta.all
       @homes=Home.all
	end

   def new
    @subasta = Subasta.new
   end

end

private
def create(nombre,id,t)
  #@resi = params[:resi]
  @subasta=Subasta.new
  @subasta.titulo = nombre
  @subasta.reservation_id = id
  @subasta.fechainicio = t
  @reservas.find(id).subasta_id= @subasta.id
  @subasta.save
end
