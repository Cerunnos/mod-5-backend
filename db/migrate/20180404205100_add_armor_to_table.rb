class AddArmorToTable < ActiveRecord::Migration[5.1]
  def change
    add_column :units, :armor, :integer
  end
end
