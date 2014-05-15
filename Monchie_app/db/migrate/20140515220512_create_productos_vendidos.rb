class CreateProductosVendidos < ActiveRecord::Migration
  def change
    create_table :productos_vendidos do |t|
      t.integer :cantidad

      t.timestamps
    end
  end
end
