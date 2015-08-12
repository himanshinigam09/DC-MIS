class Publication < ActiveRecord::Base
  attr_accessible :abstract, :author, :date_of_publication, :level, :link, :location, :organizer_name, :paper_id, :paper_title, :publication_name, :sponsers_name


 validates :abstract, :author, :date_of_publication, :level, :link, :location, :organizer_name, :paper_id, :paper_title, :publication_name, :sponsers_name, presence: true


end
