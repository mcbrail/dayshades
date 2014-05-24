class CategoryProduct < ActiveRecord::Base
  belongs_to :category
  belongs_to :product
  attr_accessible :category_id, :product_id
end
