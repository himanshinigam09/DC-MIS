ActiveAdmin.register Event do
index do
column :id
column :type_of_event
column :organizer_name
column :topic
column :venue
column :date
default_actions 
end  
end
