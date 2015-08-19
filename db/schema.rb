# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150819073944) do

  create_table "achievements", :force => true do |t|
    t.string   "dc_member_id"
    t.string   "achievement"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "edition"
    t.string   "publication"
    t.string   "ISBN_number"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "communications", :force => true do |t|
    t.integer  "dc_member_id"
    t.integer  "correspondence_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "communications", ["correspondence_id"], :name => "index_communications_on_correspondence_id"
  add_index "communications", ["dc_member_id"], :name => "index_communications_on_dc_member_id"

  create_table "correspondences", :force => true do |t|
    t.string   "type_of_correspondence", :null => false
    t.string   "subject"
    t.string   "user_initials"
    t.string   "medium"
    t.string   "address"
    t.string   "description"
    t.date     "date"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "current_projects", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "daily_logs", :force => true do |t|
    t.integer  "dc_member_id"
    t.date     "date"
    t.string   "log"
    t.string   "remark"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "dashboards", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dc_members", :force => true do |t|
    t.string   "first_name"
    t.string   "mid_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "blood_group"
    t.string   "local_address"
    t.string   "permanent_address"
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "guardian_name"
    t.string   "course_name"
    t.string   "github_link"
    t.string   "linkedin_link"
    t.string   "sem_of_joining"
    t.string   "email"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "dcs", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "entrances", :force => true do |t|
    t.date     "date_of_joining"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "date_of_birth"
    t.string   "gender"
    t.string   "blood_group"
    t.string   "area_of_interest"
    t.string   "basic_skills"
    t.string   "current_address"
    t.string   "permanent_address"
    t.string   "country_code"
    t.string   "std_code"
    t.string   "mobile_no"
    t.string   "student_email"
    t.string   "github_id"
    t.string   "fathers_name"
    t.string   "fathers_contact"
    t.string   "fathers_email"
    t.string   "guardian_name"
    t.string   "guardian_contact"
    t.string   "school_name"
    t.string   "percentage_10th"
    t.string   "percentage_12th"
    t.string   "course"
    t.string   "semester"
    t.string   "cgpa"
    t.string   "online_courses"
    t.string   "project_name"
    t.string   "project_type"
    t.string   "project_duration"
    t.string   "project_description"
    t.string   "reference_category"
    t.string   "reference"
    t.string   "why_choose"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "type_of_event"
    t.string   "organizer_name"
    t.string   "topic"
    t.string   "venue"
    t.date     "date"
    t.time     "time"
    t.string   "duration"
    t.string   "material_link"
    t.string   "summary_link"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "faqs", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "issued_resources", :force => true do |t|
    t.string   "type_of_resource"
    t.string   "issued_by"
    t.string   "issued_to"
    t.date     "issue_date"
    t.time     "issue_time"
    t.date     "submission_date"
    t.time     "submission_time"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "member_achievements", :force => true do |t|
    t.integer  "dc_member_id"
    t.integer  "achievement_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "member_achievements", ["achievement_id"], :name => "index_member_achievements_on_achievement_id"
  add_index "member_achievements", ["dc_member_id"], :name => "index_member_achievements_on_dc_member_id"

  create_table "member_events", :force => true do |t|
    t.integer  "dc_member_id"
    t.integer  "event_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "member_events", ["dc_member_id"], :name => "index_member_events_on_dc_member_id"
  add_index "member_events", ["event_id"], :name => "index_member_events_on_event_id"

  create_table "member_projects", :force => true do |t|
    t.integer  "dc_member_id"
    t.integer  "project_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "member_projects", ["dc_member_id"], :name => "index_member_projects_on_dc_member_id"
  add_index "member_projects", ["project_id"], :name => "index_member_projects_on_project_id"

  create_table "past_projects", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "profiles", :force => true do |t|
    t.string   "first_name"
    t.string   "mid_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "blood_group"
    t.string   "local_address"
    t.string   "permanent_address"
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "guardian_name"
    t.string   "course_name"
    t.string   "sem_of_joining"
    t.string   "email"
    t.string   "github_id"
    t.string   "linkedin_id"
    t.string   "facebook_id"
    t.string   "googleplus_id"
    t.string   "twitter_id"
    t.string   "blog_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "project_name"
    t.string   "project_type"
    t.string   "project_description"
    t.string   "project_leader"
    t.string   "team_id"
    t.string   "project_status"
    t.string   "dc_page_link"
    t.string   "github_page_link"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "publications", :force => true do |t|
    t.string   "publication_name"
    t.string   "level"
    t.string   "organizer_name"
    t.string   "sponsers_name"
    t.string   "location"
    t.string   "paper_id"
    t.string   "paper_title"
    t.string   "date_of_publication"
    t.text     "abstract"
    t.string   "link"
    t.string   "author"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "sessions", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "system_informations", :force => true do |t|
    t.string   "system_name"
    t.string   "ram"
    t.string   "ram_type"
    t.string   "hdd_capacity"
    t.string   "monitor_type"
    t.string   "lan"
    t.string   "access"
    t.string   "os_installed"
    t.string   "sw_details"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "password_confirmation"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

end
