class CreateWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :abilities
      t.integer :attacks
      t.integer :range
      t.integer :damage

      t.timestamps
    end
  end
end
