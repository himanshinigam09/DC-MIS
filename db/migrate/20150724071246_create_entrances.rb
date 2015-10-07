class CreateEntrances < ActiveRecord::Migration
  def change
    create_table :entrances do |t|
      t.date :date_of_joining
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :date_of_birth
      t.string :gender
      t.string :blood_group
      t.string :area_of_interest
      t.string :basic_skills
      t.string :current_address
      t.string :permanent_address
      t.string :country_code
      t.string :std_code
      t.string :mobile_no
      t.string :student_email
      t.string :github_id
      t.string :fathers_name
      t.string :fathers_contact
      t.string :fathers_email
      t.string :guardian_name
      t.string :guardian_contact
      t.string :school_name
      t.string :percentage_10th
      t.string :percentage_12th
      t.string :course
      t.string :semester
      t.string :cgpa
      t.string :online_courses
      t.string :project_name
      t.string :project_type
      t.string :project_duration
      t.string :project_description
      t.string :reference_category
      t.string :reference
      t.string :why_choose

      t.timestamps
    end
  end
end
