class Factura < ActiveRecord::Base
  belongs_to :orden
  validates_uniqueness_of :orden_id
end
