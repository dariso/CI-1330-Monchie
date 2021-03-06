class Restaurante < ActiveRecord::Base
belongs_to :user
has_many :ordens
	has_many :telefonos, as: :telefonable, dependent: :destroy
	accepts_nested_attributes_for :telefonos,
                                reject_if:lambda { |attrs|
                                  attrs.all? { |key, value| value.blank? }
                                },
                                allow_destroy:true
								
    def with_blank_infoContacto
		2.times{ telefonos.build }
	
		self
    end

validates_presence_of :nombre, on: :create
validates_presence_of :provincia, on: :create 
validates_presence_of :canton, on: :create
validates_presence_of :distrito, on: :create 
validates_presence_of :direccion, on: :create
end
