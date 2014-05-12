class CreateOrdens < ActiveRecord::Migration
  def change
    create_table :ordens do |t|
      t.integer :menu_id
      t.integer :usuario_id

      t.timestamps
    end
  end
end
