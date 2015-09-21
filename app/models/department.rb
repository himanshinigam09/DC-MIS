class Department < ActiveRecord::Base
  attr_accessible :correspondence, :event, :infrastructure, :profile, :project, :publication
end
