class UsuarioCliente < ActiveRecord::Base
	has_many :ordens

	has_one :user
	has_many :telefonos, as: :telefonable, dependent: :destroy
	has_many :emails, as: :emailable, dependent: :destroy
	accepts_nested_attributes_for :telefonos,:emails,
                                reject_if:lambda { |attrs|
                                  attrs.all? { |key, value| value.blank? }
                                },
                                allow_destroy:true
								
    def with_blank_infoContacto
		2.times{ telefonos.build }
		emails.build
		self
	end
end
