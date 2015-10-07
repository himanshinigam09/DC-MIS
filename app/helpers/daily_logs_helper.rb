module DailyLogsHelper
def daily_log_params
    params.require(:dc_member).permit(:dc_member_id, :date, :log, :remark)
  end
end
