class SubastasController < ApplicationController
  def index
  	 @reservas=Reservation.all
  	 @subastas=Subasta.all
  	 t=Time.new
	 if t.wday==2
		 @reservas.each do |res|
	        create(res.nombre,res.id,t)
	     end
	else

	end



  end


   def new
    @subasta = Subasta.new
   end

end

private
def create(nombre,id,t)
  #@resi = params[:resi]
  f = Date.new t.year,t.month,t.day
  @subasta=Subasta.new
  @subasta.titulo = nombre
  @subasta.reservation_id = id
  @subasta.fechainicio = f >> 6
  @subasta.save
end
