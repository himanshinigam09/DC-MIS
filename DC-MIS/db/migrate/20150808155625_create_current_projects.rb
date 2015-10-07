class CreateCurrentProjects < ActiveRecord::Migration
  def change
    create_table :current_projects do |t|

      t.timestamps
    end
  end
end
