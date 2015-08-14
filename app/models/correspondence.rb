class Correspondence < ActiveRecord::Base
  paginates_per 2
  attr_accessible :address, :date, :description, :medium, :subject, :type_of_correspondence, :user_initials
  has_many :communications
  has_many :dc_members, through: :communications
  default_scope order('type_of_correspondence')
end
