class RemoveRolesMascaraFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :roles_mascara, :integer
  end
end
