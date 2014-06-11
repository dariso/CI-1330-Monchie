class AddCantonToUsuarioCliente < ActiveRecord::Migration
  def change
    add_column :usuario_clientes, :canton, :string
  end
end
