class Orden < ActiveRecord::Base
belongs_to :usuario_cliente
has_many :productos_vendidos

  def tempOrden
    Orden.create!(usuario_cliente_id:UsuarioCliente.first.id)
  end

end
