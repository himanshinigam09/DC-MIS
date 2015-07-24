class Communication < ActiveRecord::Base
  belongs_to :dc_member
  belongs_to :correspondence
  # attr_accessible :title, :body
end
