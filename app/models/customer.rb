class Customer < ActiveRecord::Base
  has_many :orders
  attr_accessible :name, :password, :password_confirmation
  validates :name, :password, :password_confirmation, presence: true
end
