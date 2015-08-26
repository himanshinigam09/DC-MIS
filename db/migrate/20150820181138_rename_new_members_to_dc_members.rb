class RenameNewMembersToDcMembers < ActiveRecord::Migration
  def up
  	rename_table :new_members, :dc_members
  end

  def down
  	 rename_table :dc_members, :new_members
  end
end
