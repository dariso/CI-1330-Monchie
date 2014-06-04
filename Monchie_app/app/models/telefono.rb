class Telefono < ActiveRecord::Base
  belongs_to :telefonable, polymorphic:true
end
