class Category < ActiveRecord::Base
  has_many :Products
  attr_accessible :description, :image, :name

end
