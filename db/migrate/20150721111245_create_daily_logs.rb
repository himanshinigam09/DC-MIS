class CreateDailyLogs < ActiveRecord::Migration
  def change
    create_table :daily_logs do |t|
      t.belongs_to :dc_member, index: true
      t.string :dc_member_id
      t.date :date
      t.string :log
      t.string :remark

      t.timestamps
    end
  end
end
