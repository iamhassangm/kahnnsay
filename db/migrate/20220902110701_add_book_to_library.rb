class AddBookToLibrary < ActiveRecord::Migration[7.0]
  def change
    add_reference :libraries, :book, null: false, foreign_key: true
  end
end
