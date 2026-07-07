class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :name
      t.string :slug
      t.string :short_description
      t.text :description
      t.boolean :featured
      t.integer :display_order
      t.integer :display_type

      t.timestamps
    end
  end
end
