class RenameProfilesToDcMembers < ActiveRecord::Migration
  def up
  	rename_table :profiles, :dc_members
  end

  def down
  	 rename_table :dc_members, :profiles
  end
end
