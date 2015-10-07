class Book < ActiveRecord::Base
  attr_accessible :ISBN_number, :author, :edition, :publication, :title
  #accepts_nested_attributes_for :system_informations, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
def self.search(search)  
    if search  
      where('title  LIKE ? ',  "#{search}%")  
    else  
      scoped  
    end  
  end
end
