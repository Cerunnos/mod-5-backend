class CreateArmylists < ActiveRecord::Migration[5.1]
  def change
    create_table :armylists do |t|
      t.string :name
      t.string :description
      t.text :unit_ids
      t.timestamps
    end
  end
end
