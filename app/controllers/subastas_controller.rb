class SubastasController < ApplicationController
  def index
  	 @homes=Home.all
  	 @subastas=Subasta.all
  end
end
