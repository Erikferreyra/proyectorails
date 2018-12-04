class HomesController < ApplicationController
  def edit
  	@home=Home.find(params[:id])
  end

  def update
    @homes = Home.all
    x = "no";

  	@home=Home.find(params[:id])
    
    #
    @homes.each do |h|
      if (@home.nombre == h.nombre)
        x = "si"
      end
    end

    if (x == "no")
        if @home.update(params.require(:home).permit(:nombre,:canthabitacion,:ciudad,:direccion))
           redirect_to homes_path, :notice => "Se actualizó la residencia."
        else
           render :edit, :notice => "No pudo actualizarse la residencia."
        end
    else
        redirect_to homes_path, :alert => "No se pudo editar la residencia. El nombre de la residencia ya está en uso."
    end
  end



  def new
  	@home=Home.new
  end


  def create
    @homes = Home.all
    x = "no";

   	@home=Home.new(params.require(:home).permit(:nombre,:canthabitacion,:ciudad,:direccion));

    @homes.each do |h|
      if (@home.nombre == h.nombre)
        x = "si"
      end
    end

    if (x == "no")
        if @home.save
            redirect_to controller: 'reservations', action: 'create', nombre: @home.nombre, id: @home.id, :success => "Residencia creada."
        else
         		render :new
        end
    else
      redirect_to homes_path, :alert => "No se pudo crear la residencia. El nombre de la residencia ya está en uso."
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
