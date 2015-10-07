class RenameFirstName < ActiveRecord::Migration
  def up
  	rename_column :profiles, :first_name, :full_name
  end

  def down
  end
end
