class CreateUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :units do |t|
      t.string :name
      t.string :description
      t.string :abilities
      t.integer :movement
      t.integer :range
      t.integer :bs
      t.integer :as
      t.integer :willpower
      t.integer :wounds
      t.integer :leadership
      t.timestamps
    end
  end
end
