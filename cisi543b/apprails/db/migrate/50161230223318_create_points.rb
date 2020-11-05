class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.string :item_claimed
      t.text :comment
      t.references :user, foreign_key: true
      t.integer :points_spent
      t.integer :sort_order
      t.integer :active_status

      t.timestamps
    end
  end
end
