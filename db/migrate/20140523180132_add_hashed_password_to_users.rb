class AddHashedPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :hashed_password, :varchar
  end
end
