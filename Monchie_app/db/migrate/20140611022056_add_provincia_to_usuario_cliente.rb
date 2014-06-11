class AddProvinciaToUsuarioCliente < ActiveRecord::Migration
  def change
    add_column :usuario_clientes, :provincia, :string
  end
end
