class CreateWasteTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :waste_types do |t|
      t.string :name
      t.integer :sort_order
      t.integer :active_status
      t.string :comment

      t.timestamps
    end
  end
end
