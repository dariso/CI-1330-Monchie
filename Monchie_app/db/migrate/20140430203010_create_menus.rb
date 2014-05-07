class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :precio

      t.timestamps
    end
  end
end
