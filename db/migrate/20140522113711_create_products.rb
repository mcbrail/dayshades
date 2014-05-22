class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.string :color
      t.string :fabric
      t.decimal :price
      t.string :image_thumb
      t.string :image_big
      t.integer :category_id

      t.timestamps
    end
  end
end
