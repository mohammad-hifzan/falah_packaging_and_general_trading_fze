class CreateClients < ActiveRecord::Migration[8.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :website
      t.integer :display_order

      t.timestamps
    end
  end
end
