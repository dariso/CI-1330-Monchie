class RemoveUsuarioClienteIdFromOrdens < ActiveRecord::Migration
  def change
    remove_column :ordens, :usuario_cliente_id, :integer
  end
end
