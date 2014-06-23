class AddUserIdToUsuarioClientes < ActiveRecord::Migration
  def change
    add_column :usuario_clientes, :user_id, :integer
  end
end
