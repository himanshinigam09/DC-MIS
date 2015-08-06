class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :dc_member_id
      t.string :achievement

      t.timestamps
    end
  end
end
