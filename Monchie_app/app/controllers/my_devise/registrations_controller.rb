class MyDevise::RegistrationsController < Devise::RegistrationsController


	
	def create
	super
	resource.valid?
		if resource.errors.blank?
		resource.save
		@usuariocliente=UsuarioCliente.new
		@usuariocliente.user_id=resource.id
		@usuariocliente.save
		
		
		end
		
	end
	
	def after_sign_up_path_for (resource)
	 edit_usuario_cliente_path(resource.id)
	end

end
