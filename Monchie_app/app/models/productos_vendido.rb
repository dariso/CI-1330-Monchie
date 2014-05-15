class ProductosVendido < ActiveRecord::Base
	belongs_to :producto
	belongs_to :orden
end
