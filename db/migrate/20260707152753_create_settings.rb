class CreateSettings < ActiveRecord::Migration[8.1]
  def change
    create_table :settings do |t|
      t.string :company_name
      t.string :tagline
      t.text :about
      t.text :mission
      t.text :vision
      t.string :email
      t.string :phone
      t.string :alternate_phone
      t.text :address
      t.string :facebook
      t.string :instagram
      t.string :linkedin
      t.string :whatsapp

      t.timestamps
    end
  end
end
