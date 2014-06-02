class Restaurante < ActiveRecord::Base
	has_many emails, as => :emailable
	has_many telefonos, as => :telefonable
end
