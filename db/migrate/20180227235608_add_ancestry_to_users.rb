class AddAncestryToUsers < ActiveRecord::Migration[5.0]
=begin
  def change
    add_column :users, :ancestry, :string
    add_index :users, :ancestry, :string
  end
=end
end
