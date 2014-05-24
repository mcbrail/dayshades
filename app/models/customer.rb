class Customer < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation
end
