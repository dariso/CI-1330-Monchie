class AddEspecificacionesToProductosVendidos < ActiveRecord::Migration
  def change
    add_column :productos_vendidos, :especificaciones, :string
  end
end
