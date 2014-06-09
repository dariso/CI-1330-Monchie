class AddUsuarioClienteIdToOrdens < ActiveRecord::Migration
  def change
    add_column :ordens, :usuario_cliente_id, :integer
  end
end
