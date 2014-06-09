class AddModoretiroToOrdens < ActiveRecord::Migration
  def change
    add_column :ordens, :modoretiro, :string
  end
end
