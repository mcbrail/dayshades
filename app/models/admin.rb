class Admin < ActiveRecord::Base
  attr_accessible :email, :name, :password, :phone

  validates_presence_of :email, :name, :password, :phone
end
