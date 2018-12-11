class SearchController < ApplicationController
  def index
     @subastas = Subasta.all
     @h = Home.where(["nombre LIKE ?","%#{params[:search]}%"])

     if params[:f_ini] != nil
        @fi = params[:f_ini].to_date
        @ff = params[:f_fin].to_date
      end

  end

  def create

  end
end
