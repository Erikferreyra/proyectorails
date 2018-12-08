class UsersController < ApplicationController
  def index
  end

  def update
    @usuario = current_user
    cred = @usuario.creditos
    cred -= 1;
    if @usuario.update(creditos: cred)
      redirect_to subastas_path, :notice => "Se adjudico la reserva."
    else
      redirect_to subastas_path, :notice => "No se adjudico la reserva."
  end
end
