class Orden < ActiveRecord::Base
	has_many :productos_vendidos
	belongs_to :usuario_cliente
end
