class RemoveTelefonoFromUsuarioClientes < ActiveRecord::Migration
  def change
    remove_column :usuario_clientes, :telefono, :string
  end
end
