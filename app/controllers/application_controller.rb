class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :devise_params, if: :devise_controller?
def devise_params
	devise_parameter_sanitizer.permit(:sign_up) do |user|	
	user.permit(:nombre,:apellido,:fechanac,:email,:tipousuario,:numtarjeta,:password,:password_confirmation)
     end
 end
 
end
