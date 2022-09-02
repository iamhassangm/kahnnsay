class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.integer :lat
      t.integer :lon

      t.timestamps
    end
  end
end
