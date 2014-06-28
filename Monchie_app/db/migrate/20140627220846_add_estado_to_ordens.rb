class AddEstadoToOrdens < ActiveRecord::Migration
  def change
    add_column :ordens, :estado, :string
  end
end
