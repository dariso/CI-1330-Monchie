class RegistrationController < Devise::RegistrationsController
	
	
	def create
	super
	if resource.save
	@usuariocliente=UsuarioCliente.new
	@usuariocliente.user_id=resource.id
	@usuariocliente.save
	end
	end
	
end
