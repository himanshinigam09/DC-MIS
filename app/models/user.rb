class User < ActiveRecord::Base
<<<<<<< HEAD
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation
=======
  attr_accessible :email, :name, :password_digest, :password, :password_confirmation
  has_secure_password
>>>>>>> fe87f00a8436fe8680b5eb15c11aaf7da60113f9
end
