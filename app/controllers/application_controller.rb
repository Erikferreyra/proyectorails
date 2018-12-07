class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :devise_params, if: :devise_controller?
def devise_params
	devise_parameter_sanitizer.permit(:sign_up) do |user|	
	user.permit(:nombre,:apellido,:premium,:fechanac,:email,:numtarjeta,:titulartarjeta,:fechavenc,:tipotarjeta,:cvv,:password,:password_confirmation)
     end
 	devise_parameter_sanitizer.permit(:account_update) do |user|	
	user.permit(:nombre,:apellido,:premium,:fechanac,:email,:numtarjeta,:titulartarjeta,:fechavenc,:tipotarjeta,:cvv,:password,:password_confirmation,:current_password)
     end
 end

end
