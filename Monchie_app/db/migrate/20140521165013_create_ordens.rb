class CreateOrdens < ActiveRecord::Migration
  def change
    create_table :ordens do |t|
      t.datetime :fecha

      t.timestamps
    end
  end
end
