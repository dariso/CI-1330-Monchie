class Orden < ActiveRecord::Base
belongs_to :user
belongs_to :restaurante
has_many :productos_vendidos
has_one :factura
end
