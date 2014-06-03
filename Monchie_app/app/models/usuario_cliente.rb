class UsuarioCliente < ActiveRecord::Base
	has_many :ordens
end
