class Product < ActiveRecord::Base
  
  belongs_to :Categories
  attr_accessible :category_id, :code, :color, :fabric, :image_big, :image_thumb, :price

  validates_presence_of :category_id, :code, :color, :fabric, :image_big, :image_thumb, :price


end
