class CreateCustomers < ActiveRecord::Migration
  def up
  	
    create_table :customers do |t|
      t.string :name
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end
end