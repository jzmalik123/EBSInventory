class CreatePartUnits < ActiveRecord::Migration[7.2]
  def change
    create_table :part_units do |t|
      t.references :part_group, null: false, foreign_key: true
      t.string :qr_code
      t.integer :status

      t.timestamps
    end
  end
end
