class Orden < ActiveRecord::Base
belongs_to :usuario_cliente
has_many :productos_vendidos
end
