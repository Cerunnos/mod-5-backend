class AddPointsToUnits < ActiveRecord::Migration[5.1]
  def change
      add_column :units, :points, :integer
  end
end
