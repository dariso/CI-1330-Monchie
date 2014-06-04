class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :email
      t.references :emailable, polymorphic: true
      t.timestamps
    end
  end
end
