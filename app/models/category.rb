class Category < ActiveRecord::Base
  has_many :products
  attr_accessible :description, :image, :name

  validates_presence_of :description, :image, :name
<<<<<<< HEAD
=======
  
>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
end
