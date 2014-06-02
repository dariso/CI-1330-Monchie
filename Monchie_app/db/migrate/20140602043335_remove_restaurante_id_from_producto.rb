class RemoveRestauranteIdFromProducto < ActiveRecord::Migration
  def change
    remove_column :productos, :restaurante_id, :integer
  end
end
