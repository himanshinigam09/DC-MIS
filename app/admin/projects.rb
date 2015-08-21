ActiveAdmin.register Project do
  index do  
  	column :id                          
    column :project_name                     
    column :project_type       
    column :project_description    
    column :project_leader
    column :github_page_link             
    default_actions 
end
end
