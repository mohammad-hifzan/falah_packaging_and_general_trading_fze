class CreateServices < ActiveRecord::Migration[8.1]
  def change
    create_table :services do |t|
      t.string :title
      t.string :slug
      t.string :short_description
      t.text :description
      t.string :icon
      t.boolean :featured
      t.integer :display_order

      t.timestamps
    end
  end
end
