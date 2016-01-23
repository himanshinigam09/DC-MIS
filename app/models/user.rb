class User < ActiveRecord::Base
attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :auth_token
   has_secure_password
   validates :email, uniqueness: true
   validates :first_name, :last_name, :email, presence: true
   validates :password, length: { in: 8..20 } , confirmation: true
has_one :user_profile




end
