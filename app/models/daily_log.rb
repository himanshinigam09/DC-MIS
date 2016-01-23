class DailyLog < ActiveRecord::Base
  attr_accessible :date, :dc_member_id, :log, :remark
  belongs_to :dc_member, :foreign_key => 'dc_member_id'
end
