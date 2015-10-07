class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :project_type
      t.string :project_description
      t.string :project_leader
      t.string :team_id
      t.string :project_status
      t.string :dc_page_link
      t.string :github_page_link

      t.timestamps
    end
  end
end
