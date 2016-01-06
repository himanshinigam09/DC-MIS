class IssueResource < ActiveRecord::Base
  attr_accessible :issue_date, :issue_time, :issued_by, :issued_to, :submission_date, :submission_time, :type_of_resource
def self.search(search)  
    if search  
      where('title  LIKE ? ',  "#{search}%")  
    else  
      scoped  
    end  
  end


<<<<<<< HEAD
end
=======
end
>>>>>>> 216b9ee33b1f74f9672d0e3e17ea96046f7a954d
