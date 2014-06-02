class UsuarioCliente < ActiveRecord::Base
	has_many :ordens
	has_many emails, as => :emailable
	has_many telefonos, as => :telefonable
end
