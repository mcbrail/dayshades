<<<<<<< HEAD

require 'digest/sha2'
class User < ActiveRecord::Base

attr_accessible :name, :password, :password_confirmation, :salt #:hashed_password

  validates :name, :presence => true, :uniqueness => true
  validates :password, :confirmation => true
  attr_accessor :password_confirmation, :salt, :hashed_password
  attr_reader :password
  validate :password_must_be_present
  after_destroy :ensure_an_admin_remains

    def User.authenticate(name, password)
       if user = find_by_name(name)
          if user.hashed_password == encrypt_password(password, user.salt)
             user
          end
       end
    end
   
    def User.encrypt_password(password, salt)
       Digest::SHA2.hexdigest(password + "wibble" + salt)
    end

    def password=(password)
       @password = password
       if password.present?
          generate_salt
          self.hashed_password = self.class.encrypt_password(password, salt)
       end
    end

  private

    def password_must_be_present
       errors.add(:password, "Missing password" ) unless hashed_password.present?
    end

    def generate_salt
       self.salt = self.object_id.to_s + rand.to_s
    end

    def ensure_an_admin_remains
      if User.count.zero?
        raise "Can't delete last user"
      end
    end
    
  end
=======
class User < ActiveRecord::Base
  attr_accessible :address, :email, :name, :password, :phone
end
>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
