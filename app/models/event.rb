class Event < ActiveRecord::Base

  attr_accessible :date, :duration, :material_link, :organizer_id, :summary_link, :time, :topic, :type_of_event, :venue
  has_many :member_events
  has_many :dc_members, through: :member_events
 validates :date, :duration, :material_link, :organizer_id, :summary_link, :time, :topic, :type_of_event, :venue, presence: true

end
