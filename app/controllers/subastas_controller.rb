class SubastasController < ApplicationController
  def index
  	 @subastas=Subasta.all
     @reservas=Reservation.all
     t=Time.new
     if t.wday==3 
        f = Date.new t.year,t.month,t.day 
        @reservas.each do |res| 
          res.fecha_ini= f >> 6
          res.save  
          create(res.nombre,res.id,f)
        end
      end
      redirect_to url_for(action: 'index',controller: 'homes')
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
