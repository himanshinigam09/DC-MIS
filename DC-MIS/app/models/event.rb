class Event < ActiveRecord::Base

  attr_accessible :date, :duration, :material_link, :organizer_name, :summary_link, :time, :topic, :type_of_event, :venue
  has_many :member_events
  has_many :dc_members, through: :member_events
  def self.search(search)  
    if search  
      where('topic  LIKE ? OR type_of_event LIKE ?', "#{search}%", "#{search}%")  
    else  
      scoped  
    end  
  end
end
