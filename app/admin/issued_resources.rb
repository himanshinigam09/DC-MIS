ActiveAdmin.register IssuedResource do
index do
column :id
column :type_of_resource
column :issued_by
column :issued_to
column :issue_date
column :submission_date
default_actions 
end    
end
