class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.text :author
      t.text :publisher
      t.date :published_in_year

      t.timestamps
    end
  end
end
