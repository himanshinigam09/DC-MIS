class CreateMemberAchievements < ActiveRecord::Migration
  def change
    create_table :member_achievements do |t|
      t.references :dc_member
      t.references :achievement

      t.timestamps
    end
    add_index :member_achievements, :dc_member_id
    add_index :member_achievements, :achievement_id
  end
end
