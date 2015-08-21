ActiveAdmin.register Publication do
  index do  
  	column :id                          
    column :paper_title                    
    column :organizer_name       
    column :author           
    column :date_of_publication
    column :location            
    default_actions 
end
end
