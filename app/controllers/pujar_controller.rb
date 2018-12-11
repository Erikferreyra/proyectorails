class PujarController < ApplicationController
  def show
    @subasta = Auction.find(params[:id])
  end

end
