class AddProductoIdToProductosVendidos < ActiveRecord::Migration
  def change
    add_column :productos_vendidos, :producto_id, :integer
  end
end
