class MemberAchievement < ActiveRecord::Base
  belongs_to :dc_member
  belongs_to :achievement
  # attr_accessible :title, :body
end
