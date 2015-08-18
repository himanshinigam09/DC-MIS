ActiveAdmin.register Event do
  index do
  selectable_column
  column :type_of_event
  column :organizer_name
  column :topic
  column :venue
  actions
end

end
