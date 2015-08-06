class CreateMemberProjects < ActiveRecord::Migration
  def change
    create_table :member_projects do |t|
      t.references :dc_member
      t.references :project

      t.timestamps
    end
    add_index :member_projects, :dc_member_id
    add_index :member_projects, :project_id
  end
end
