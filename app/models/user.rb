class User < ActiveRecord::Base
   attr_accessible :first_name, :last_name, :email, :password
   has_secure_password
   validates :email, uniqueness: true
    validates :first_name, :last_name, :email, presence: true
   validates :password, length: { in: 8..20 } 
end
