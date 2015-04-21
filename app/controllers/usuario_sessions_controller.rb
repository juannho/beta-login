class UsuarioSessionsController < ApplicationController
	def new

		@usuario = Usuario.new
	end
	def create
  usuario = Usuario.find_by_username(params[:username])
  if usuario && Usuario.find_by_password(params[:password])
    session[:usuario_id] = usuario.id
    render :text => "Login exitoso", :status => 500
  else
    render :text => "verifique sus datos", :status => 500
  end
end
	def destroy
		logout
		redirect_to(:usuarios, message: "Logget out")
		
	end
end