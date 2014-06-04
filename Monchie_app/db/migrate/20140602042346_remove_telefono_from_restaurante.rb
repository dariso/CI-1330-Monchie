class RemoveTelefonoFromRestaurante < ActiveRecord::Migration
  def change
    remove_column :restaurantes, :telefono, :string
  end
end
