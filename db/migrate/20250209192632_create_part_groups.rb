class CreatePartGroups < ActiveRecord::Migration[7.2]
  def change
    create_table :part_groups do |t|
      t.references :shipment, null: false, foreign_key: true
      t.references :partable, polymorphic: true, null: false
      t.integer :quantity
      t.integer :unit_price
      t.integer :total_price

      t.timestamps
    end
  end
end
