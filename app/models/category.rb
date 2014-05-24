class Category < ActiveRecord::Base
  has_many :products
  has_many :products, :through => :category_products
  attr_accessible :description, :image, :name

  validates_presence_of :description, :image, :name
end
