class Product < ActiveRecord::Base
  attr_accessible :category_id, :code, :color, :fabric, :image_big, :image_thumb, :price
end
