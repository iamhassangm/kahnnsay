class AddMembershipToLibrary < ActiveRecord::Migration[7.0]
  def change
    add_column :libraries, :membership, :text
  end
end
