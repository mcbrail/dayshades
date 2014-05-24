class Category < ActiveRecord::Base
  has_many :products
  attr_accessible :description, :image, :name

  validates_presence_of :description, :image, :name
end
