class Rename < ActiveRecord::Migration
  def up
  	rename_column :events, :organizer_id, :organizer_name
  end

  def down
  end
end