class HomesController < ApplicationController
  def edit
  	@home=Home.find(params[:id])
  end

  def update
  	@home=Home.find(params[:id])
     if @home.update(params.require(:home).permit(:nombre,:canthabitacion,:ciudad,:direccion))
  		   redirect_to homes_path
     else
		     render :edit, :error => "No pudo actualizarse la residencia"
	   end
  end


  def new
  	@home=Home.new
  end


  def create
   	@home=Home.new(params.require(:home).permit(:nombre,:canthabitacion,:ciudad,:direccion));
    if @home.save
        redirect_to controller: 'reservations',action: 'new', nombre: @home.nombre, id: @home.id 
    else
        render :new
    end
  end

  def default
  end

  def index
     @homes=Home.all
  end

  def show
  end


  def destroy
	@home=Home.find(params[:id])
  	if @home.destroy
		redirect_to homes_path
	  else
		redirect_to homes_path
 	  end
  end

end
