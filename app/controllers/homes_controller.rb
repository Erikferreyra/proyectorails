class HomesController < ApplicationController
  def edit
  	@home=Home.find(params[:id])
  end

  def update
    @homes = Home.all #lista de residencias

  	@home = Home.find(params[:id])

    if @home.update(params.require(:home).permit(:nombre,:canthabitacion,:ciudad,:direccion))
       redirect_to homes_path, :notice => "Se actualizó la residencia."
    else
       redirect_to edit_home_path, :notice => "No pudo actualizarse la residencia. El nombre de la residencia ya está en uso."
    end
  end



  def new
  	@home=Home.new
  end


  def create
    @homes = Home.all

   	@home=Home.new(params.require(:home).permit(:nombre,:canthabitacion,:ciudad,:direccion));

    if @home.save
        redirect_to controller: 'reservations', action: 'create', nombre: @home.nombre, id: @home.id, :success => "Residencia creada."
    else
     		redirect_to new_home_path, :notice => "El nombre de la residencia ya está en uso."
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
