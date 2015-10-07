class Achievement < ActiveRecord::Base
  attr_accessible :achievement, :dc_member_id
  has_many :member_achievements
  has_many :dc_members, through: :member_achievements
end
