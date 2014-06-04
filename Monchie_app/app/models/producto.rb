class Producto < ActiveRecord::Base
#atributos que quiero acceder por medio de formulario
 	
	belongs_to :restaurante
	has_many :productos_vendidos
end
