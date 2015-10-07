class MemberEvent < ActiveRecord::Base
  belongs_to :dc_member
  belongs_to :event
  # attr_accessible :title, :body
end
