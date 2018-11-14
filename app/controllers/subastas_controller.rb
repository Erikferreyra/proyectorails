class SubastasController < ApplicationController
  def index
  	 @reservas=Reservation.all
  	 @subastas=Subasta.all
  	 t=Time.new
	   if t.wday==3
      f = Date.new t.year,t.month,t.day 
		 @reservas.each do |res|
          res.fecha_ini= f >> 6
          res.save  
	        create(res.nombre,res.id,f)
	     end
	   end
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
  @subasta.fechainicio = t >> 6
  @subasta.save
end
