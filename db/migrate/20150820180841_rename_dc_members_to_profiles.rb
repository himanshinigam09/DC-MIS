class RenameDcMembersToProfiles < ActiveRecord::Migration
  def up
  	rename_table :dc_members, :profiles 
  end

  def down
  	rename_table :profiles, :dc_members
  end
end
