class SubastasController < ApplicationController
    def index
    	 @subastas=Subasta.order(fechainicio: :desc)
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
  @subasta.save
end
