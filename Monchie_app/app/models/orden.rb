class Orden < ActiveRecord::Base
	has_many :productos_vendidos
end
