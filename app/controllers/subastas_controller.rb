class SubastasController < ApplicationController
  def index
  	 @homes=Home.all
  	 @subasta=Subasta.new
  end
  def create
 	@subasta=Subasta.new(params.require(:subasta).permit(:titulo))
 	if @subasta.save
 		redirect_to adm_path
 	else
 		render :index
 	end
  end
  def new 
  end
end
