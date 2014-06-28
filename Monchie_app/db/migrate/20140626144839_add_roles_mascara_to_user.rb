class AddRolesMascaraToUser < ActiveRecord::Migration
  def change
    add_column :users, :roles_mascara, :integer
  end
end
