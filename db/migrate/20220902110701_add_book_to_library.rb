class AddBookToLibrary < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :library, null: true, foreign_key: true
  end
end
