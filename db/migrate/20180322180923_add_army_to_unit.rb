class AddArmyToUnit < ActiveRecord::Migration[5.1]
  def change
    add_column :units, :army_id, :integer
  end
end
