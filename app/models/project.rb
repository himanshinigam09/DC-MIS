class Project < ActiveRecord::Base
  attr_accessible :dc_page_link, :github_page_link, :project_description, :project_leader, :project_name, :project_status, :project_type, :team_id
  has_many :member_projects
  has_many :dc_members, through: :member_projects
  def self.search(search)  
    if search  
      where('project_name  LIKE ?', "%#{search}%")  
    else  
      scoped  
    end  
  end  

end
