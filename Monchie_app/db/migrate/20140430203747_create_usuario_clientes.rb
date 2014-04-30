class CreateUsuarioClientes < ActiveRecord::Migration
  def change
    create_table :usuario_clientes do |t|
      t.string :nombre
      t.string :apellidos
      t.string :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
