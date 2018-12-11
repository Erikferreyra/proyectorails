class PujarController < ApplicationController
  def show
    @subasta = Subasta.find(params[:id])
  end

end
