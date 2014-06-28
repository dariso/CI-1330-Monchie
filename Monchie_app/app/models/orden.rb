class Orden < ActiveRecord::Base
belongs_to :user
has_many :productos_vendidos
has_one :factura
end
