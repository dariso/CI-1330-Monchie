class UsuarioCliente < ActiveRecord::Base

  belongs_to :user
	has_many :telefonos, as: :telefonable, dependent: :destroy
	has_many :emails, as: :emailable, dependent: :destroy
	accepts_nested_attributes_for :telefonos,:emails,
                                reject_if:lambda { |attrs|
                                  attrs.all? { |key, value| value.blank? }
                                },
                                allow_destroy:true
		##Devise guarda email???
    def with_blank_infoContacto
		2.times{ telefonos.build }
	  self
	end
end
