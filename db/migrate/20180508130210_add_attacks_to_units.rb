class AddAttacksToUnits < ActiveRecord::Migration[5.1]
  def change
    add_column :units, :attacks, :integer
  end
end
