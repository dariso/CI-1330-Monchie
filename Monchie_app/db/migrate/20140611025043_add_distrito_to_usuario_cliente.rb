class AddDistritoToUsuarioCliente < ActiveRecord::Migration
  def change
    add_column :usuario_clientes, :distrito, :string
  end
end
