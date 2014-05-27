class Administrator < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :email, :name, :password, :phone

  validates_presence_of :email, :name, :password, :phone
=======
  attr_accessible :confirmation, :email, :name, :password, :phone
  validates :name, :phone, :email, :password, :confirmation,	:presence 	=>	true
>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
end
