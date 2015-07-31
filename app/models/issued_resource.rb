class IssuedResource < ActiveRecord::Base
  attr_accessible :issue_date, :issue_time, :issued_by, :issued_to, :submission_date, :submission_time, :type_of_resource
  
end
