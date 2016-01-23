require 'test_helper'

class DailyLogsControllerTest < ActionController::TestCase
  setup do
    @daily_log = daily_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_log" do
    assert_difference('DailyLog.count') do
      post :create, daily_log: { date: @daily_log.date, log: @daily_log.log, remark: @daily_log.remark }
    end

    assert_redirected_to daily_log_path(assigns(:daily_log))
  end

  test "should show daily_log" do
    get :show, id: @daily_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_log
    assert_response :success
  end

  test "should update daily_log" do
    put :update, id: @daily_log, daily_log: { date: @daily_log.date, log: @daily_log.log, remark: @daily_log.remark }
    assert_redirected_to daily_log_path(assigns(:daily_log))
  end

  test "should destroy daily_log" do
    assert_difference('DailyLog.count', -1) do
      delete :destroy, id: @daily_log
    end

    assert_redirected_to daily_logs_path
  end
end
