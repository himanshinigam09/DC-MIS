class SystemInformation < ActiveRecord::Base
  attr_accessible :access, :hdd_capacity, :lan, :monitor_type, :os_installed, :ram, :ram_type, :sw_details, :system_name
end
