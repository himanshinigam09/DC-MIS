class CreateSystemInformations < ActiveRecord::Migration
  def change
    create_table :system_informations do |t|
      t.string :system_name
      t.string :ram
      t.string :ram_type
      t.string :hdd_capacity
      t.string :monitor_type
      t.string :lan
      t.string :access
      t.string :os_installed
      t.string :sw_details

      t.timestamps
    end
  end
end
