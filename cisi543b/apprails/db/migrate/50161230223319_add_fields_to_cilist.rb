class AddFieldsToCilist < ActiveRecord::Migration[5.2]
  def change
    add_column :cilists, :points_awarded, :integer
    add_column :cilists, :responsible, :string
    add_column :cilists, :annual_savings, :string
    add_column :cilists, :cost_to_implement, :string
    add_column :cilists, :comment, :text
  end
end
