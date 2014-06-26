class MyDevise::RegistrationsController < Devise::RegistrationsController

	def create
	super
	resource.valid?
		if resource.errors.blank?
		resource.save
		end
		
	end
	
	def after_sign_up_path_for (resource)
	 new_usuario_cliente_path(:user => { :user_id => resource.id } )
	end

end
