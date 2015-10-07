ActiveAdmin.register SystemInformation do
  index do
  	column :id
  	column :system_name
  	column :ram
  	column :ram_type
  	column :hdd_capacity
  	column :monitor_type
  	column :lan
  	column :os_installed
  	column :sw_details
  	actions
  end
end
