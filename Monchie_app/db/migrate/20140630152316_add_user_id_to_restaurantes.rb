class AddUserIdToRestaurantes < ActiveRecord::Migration
  def change
    add_column :restaurantes, :user_id, :integer
  end
end
