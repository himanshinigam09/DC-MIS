class Session < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email,:password
  validates  :email,:password, presence: true

end
