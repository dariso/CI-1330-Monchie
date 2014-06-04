class UsuarioCliente < ActiveRecord::Base
	has_many :ordens
	has_many :telefonos, as: :telefonable, dependent: :destroy
	accepts_nested_attributes_for :telefonos,
                                reject_if:lambda { |attrs|
                                  attrs.all? { |key, value| value.blank? }
                                },
                                allow_destroy:true
								
    def with_blank_telefono
		telefonos.build
		telefonos.build
		self
	end
end
