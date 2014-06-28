class AddUserIdToOrdens < ActiveRecord::Migration
  def change
    add_column :ordens, :user_id, :integer
  end
end
