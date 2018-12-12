class HotsalesController < ApplicationController
  def index
  	@hotsales=Hotsale.all
  end
  
  def show
    @hotsale=Hotsale.find(params[:id])
  end

  def new
  	@res=params[:id]
  	@hotsale=Hotsale.new
  end

  def create
  	@hotsale=Hotsale.new(params.require(:hotsale).permit(:precio,:reservation_id));
    if @hotsale.save
        @res=Reservation.find(@hotsale.reservation_id)
        @res.hotsale_id=@hotsale.id
        @res.save
        redirect_to controller: 'reservations',action: 'index'
    else
      render :new
    end

  end
  def confirmacion
    @r=params[:id]
    @r.adjudicada=true
    @r.save
  end
end
