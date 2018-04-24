class CreateArmyLists < ActiveRecord::Migration[5.1]
  def change
    create_table :army_lists do |t|
      t.string :name
      t.integer :army_id

      t.timestamps
    end
  end
end
