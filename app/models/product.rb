class Product < ActiveRecord::Base
  belongs_to :Category
  attr_accessible :category_id, :code, :color, :fabric, :image_big, :image_thumb, :price
end
