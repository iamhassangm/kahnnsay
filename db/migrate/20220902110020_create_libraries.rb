class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.text :name
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
