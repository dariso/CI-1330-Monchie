class AddRestauranteIdToProductos < ActiveRecord::Migration
  def change
    add_column :productos, :restaurante_id, :integer
  end
end
