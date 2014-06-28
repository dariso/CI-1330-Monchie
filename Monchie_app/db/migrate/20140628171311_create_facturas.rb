class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.integer :total
      t.references :orden
      t.timestamps
    end
  end
end
