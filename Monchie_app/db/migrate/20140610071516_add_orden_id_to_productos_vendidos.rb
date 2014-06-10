class AddOrdenIdToProductosVendidos < ActiveRecord::Migration
  def change
    add_column :productos_vendidos, :orden_id, :integer
  end
end
