class CreatePastProjects < ActiveRecord::Migration
  def change
    create_table :past_projects do |t|

      t.timestamps
    end
  end
end
