class UsersController < ApplicationController
  def update
  	@user=User.find params[:id]
  	if @user.update user_params
  		redirect_to adm_path, notice: "El usuario ahora es premium"
  	else
  		redirect_to adm_path, alert: "No se pudo cambiar el usuario a premium"
  	end
  end

  def user_params
  	params.require(:user).permit(:premium)
  end

end
