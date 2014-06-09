class AddOrdensIdToEstados < ActiveRecord::Migration
  def change
    add_column :estados, :ordens_id, :integer
  end
end
