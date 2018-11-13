class SubastasController < ApplicationController
  def index
  	 @residencia=Reservation.all
  	 @subastas=Subasta.all
  	 @t=Time.new
	 if @t.wday==2
		 @residencia.each do |res| 	    
	        create(res.nombre,res.id,@t)
	     end
	else
		
	end 
  	 
  
        
  end
	 
  
   def new 
    @subastas = Subasta.new
   end

   def create(nombre,id,t)
   	 #@resi = params[:resi]
     @f = Date.new @t.year,@t.month,@t.day + 60
     @subastas=Subasta.new
     @subastas.titulo = nombre
     @subastas.reservation_id = id
     @subastas.fechainicio = @f  
     @subastas.save
 
   end
   
end
