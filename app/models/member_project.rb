class MemberProject < ActiveRecord::Base
  belongs_to :dc_member
  belongs_to :project
  # attr_accessible :title, :body
end
