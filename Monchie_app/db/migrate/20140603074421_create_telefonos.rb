class CreateTelefonos < ActiveRecord::Migration
  def change
    create_table :telefonos do |t|
      t.string :telefono
	  t.references :telefonable, polymorphic: true
      t.timestamps
    end
  end
end
