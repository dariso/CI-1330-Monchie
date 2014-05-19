class Producto < ActiveRecord::Base
	belongs_to :restaurante
	has_many :productos_vendidos
end
