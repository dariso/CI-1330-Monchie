class Factura < ActiveRecord::Base
  belongs_to :orden
end
