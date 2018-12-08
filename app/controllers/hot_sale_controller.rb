class HotSaleController < ApplicationController
	def new
		@hot_sale=Hot_sale.find params[:id]
  		if @hot_sale.new hots_params
  			redirect_to reservations_path, notice: "El usuario ahora es premium"
  		else
  			redirect_to reservations_path, alert: "No se pudo cambiar el usuario a premium"
  		end
  end

  def user_params
  		params.require(:hot_sale).permit(:reservation_id)
  end

end
