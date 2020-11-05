class CreateCilists < ActiveRecord::Migration[5.2]
  def change
    create_table :cilists do |t|
      t.string :cell_or_location
      t.references :waste_type, foreign_key: true
      t.references :benefit, foreign_key: true
      t.text :current_state
      t.text :improvement_suggestion
      t.references :implementation_status, foreign_key: true
      t.references :feasibility, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :sort_order
      t.integer :active_status

      t.timestamps
    end
  end
end
