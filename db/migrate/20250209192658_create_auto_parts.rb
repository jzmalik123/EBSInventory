class CreateAutoParts < ActiveRecord::Migration[7.2]
  def change
    create_table :auto_parts do |t|
      t.string :name

      t.timestamps
    end
  end
end
