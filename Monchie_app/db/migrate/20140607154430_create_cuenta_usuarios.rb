class CreateCuentaUsuarios < ActiveRecord::Migration
  def change
    create_table :cuenta_usuarios do |t|
      t.string :usuario
      t.string :password

      t.timestamps
    end
  end
end
