class Profile < ActiveRecord::Base
  attr_accessible :blog_id, :blood_group, :course_name, :date_of_birth, :email, :facebook_id, :father_name, :first_name, :gender, :github_id, :googleplus_id, :guardian_name, :last_name, :linkedin_id, :local_address, :mid_name, :mother_name, :permanent_address, :sem_of_joining, :twitter_id, :image
  has_attached_file :image,  styles: { large: "1000x1000>", medium: "300x300>", thumb: "100x100>" }
validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]


end
