class AddFieldsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :achievement, :text
    add_column :profiles, :blog, :text
    add_column :profiles, :education, :text
  end
end
