class CreateDcMembers < ActiveRecord::Migration
  def change
    create_table :dc_members do |t|
      
      t.string :first_name
      t.string :mid_name
      t.string :last_name
      t.date :date_of_birth
      t.string :gender
      t.string :blood_group
      t.string :local_address
      t.string :permanent_address
      t.string :father_name
      t.string :mother_name
      t.string :guardian_name
      t.string :course_name
      t.string :github_link
      t.string :linkedin_link
      t.string :sem_of_joining
      t.string :email

      t.timestamps
    end
    
  end
end
