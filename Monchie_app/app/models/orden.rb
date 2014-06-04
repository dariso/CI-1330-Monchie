class Orden < ActiveRecord::Base
has_one :usuario_cliente
has_many :productos_vendidos
end
