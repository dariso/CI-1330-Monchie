class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.orden_id :integer
      t.total :integer

      t.timestamps
    end
  end
end
