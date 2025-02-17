class CreateEngineParts < ActiveRecord::Migration[7.2]
  def change
    create_table :engine_parts do |t|
      t.string :ebs_number
      t.string :car_make
      t.string :chassis_number
      t.string :engine_number
      t.integer :engine_cc

      t.timestamps
    end
  end
end
