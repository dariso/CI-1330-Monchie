class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.string :nombre
      t.string :telefono
      t.string :provincia
      t.string :canton
      t.string :distrito
      t.string :direccion

      t.timestamps
    end
  end
end
