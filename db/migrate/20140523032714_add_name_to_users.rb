class AddNameToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :name, :string
  end
end
