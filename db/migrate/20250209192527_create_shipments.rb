class CreateShipments < ActiveRecord::Migration[7.2]
  def change
    create_table :shipments do |t|
      t.string :invoice_number
      t.date :date
      t.string :shipped_from_country
      t.string :shipped_from_city
      t.string :shipped_to_country
      t.string :shipped_to_city
      t.string :container_number
      t.string :EBS_number
      t.string :sold_to_company
      t.string :sold_to_address
      t.string :sold_to_zip
      t.string :sold_to_email
      t.string :sold_to_phone
      t.integer :total_quantity
      t.integer :total_amount

      t.timestamps
    end
  end
end
