class AuctionsController < ApplicationController
    def index
    	 @subastas=Auction.order(fechainicio: :desc)

       
       @h = Home.where(["nombre LIKE ?", "%#{params[:search]}%"])
       if params[:f_ini] != nil
         @fi = params[:f_ini].to_date
         @ff = params[:f_fin].to_date
       end

   end

   def new
    @subasta = Auction.new
   end

   def update
      @subasta=Auction.find(params[:id])

      @user = current_user

      if(@user.creditos <= 0)
        redirect_to auctions_path, alert: "No dispones de creditos!"
      else
        if (@subasta.update subasta_params)
            redirect_to auctions_path, notice: "Se realizó la puja. Si gana la subasta, se le descontará un crédito. Buena suerte!"
        else
            redirect_to auctions_path, notice: "No se pudo adjudicar la reserva."
        end
      end
    end

  def subasta_params
    params.require(:auction).permit(:pujamax, :id_postor)
  end


end

private
def create(nombre,id,t)
  #@resi = params[:resi]
  @subasta=Auction.new
  @subasta.titulo = nombre
  @subasta.reservation_id = id
  @subasta.fechainicio = t
  @subasta.save
end
