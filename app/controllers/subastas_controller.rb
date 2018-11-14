class SubastasController < ApplicationController
  def index
  	 @reserva=Reservation.all
  	 @subastas=Subasta.all
  	 t=Time.new
	   if t.wday==2
      f = Date.new t.year,t.month,t.day 
		  @reserva.each do |res| 
          res.fecha_ini= f >> 6
          res.save  
	        create(res.nombre,res.id,f)
	     end
	   else
		 end 
  end
   def new 
    @subastas = Subasta.new
   end

   def create(nombre,id,f)
   	 #@resi = params[:resi] 
     @subastas=Subasta.new
     @subastas.titulo = nombre
     @subastas.reservation_id = id
     @subastas.fechainicio = f 
     @subastas.save
 
   end
   
end
