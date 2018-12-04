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
        ######################PREGUNTAR############################
        #flash[:error] = "mensaje"
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
