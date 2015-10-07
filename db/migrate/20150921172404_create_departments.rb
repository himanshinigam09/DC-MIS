class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.text :event
      t.text :infrastructure
      t.text :correspondence
      t.text :profile
      t.text :project
      t.text :publication

      t.timestamps
    end
  end
end
