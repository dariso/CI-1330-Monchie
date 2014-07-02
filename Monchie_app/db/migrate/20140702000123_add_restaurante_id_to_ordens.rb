class AddRestauranteIdToOrdens < ActiveRecord::Migration
  def change
    add_column :ordens, :restaurante_id, :integer
  end
end
