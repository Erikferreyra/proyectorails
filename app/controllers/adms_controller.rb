class AdmsController < ApplicationController
  def edit
    @home=Home.find(params[:id])  
  end
  def update
    @home=Home.find(params[:id])
     if @home.update(params.require(:home).permit(:nombre))
      redirect_to adms_path
     else
    render :edit
  end 
  end
  def new 
    @home=Home.new
  end
  def create
  @home=Home.new(params.require(:home).permit(:nombre,:ubicacion,:disponibilidad))
  if @home.save
    redirect_to adms_path
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
    redirect_to adms_path
  else
    redirect_to adms_path
  end 
 end
end
