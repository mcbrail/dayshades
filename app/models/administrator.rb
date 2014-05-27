class Administrator < ActiveRecord::Base
  attr_accessible :confirmation, :email, :name, :password, :phone
  validates :name, :phone, :email, :password, :confirmation,	:presence 	=>	true
end
