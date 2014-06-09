class RemoveFechaFromOrdens < ActiveRecord::Migration
  def change
    remove_column :ordens, :fecha, :datetime
  end
end
