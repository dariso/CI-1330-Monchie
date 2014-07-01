class AddEstadoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :estado, :integer
  end
end
