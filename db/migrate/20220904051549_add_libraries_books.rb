class AddLibrariesBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries_books, :id => false do |t|
      t.integer :library_id
      t.integer :book_id
    end
  end
end
