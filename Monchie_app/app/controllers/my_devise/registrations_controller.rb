class MyDevise::RegistrationsController < Devise::RegistrationsController

	def new
	super
		if resource.save
	
		end
	end
	
	def create
	super
	resource.valid?
		if resource.errors.blank?
		resource.save
		@usuariocliente=UsuarioCliente.new
		@usuariocliente.user_id=resource.id
		@usuariocliente.save
		redirect_to new_usuario_cliente_path
		else
		render :action => "new"
		end
		
	end

end
