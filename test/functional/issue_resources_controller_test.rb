require 'test_helper'

class IssueResourcesControllerTest < ActionController::TestCase
  setup do
    @issue_resource = issue_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issue_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issue_resource" do
    assert_difference('IssueResource.count') do
      post :create, issue_resource: { issue_date: @issue_resource.issue_date, issue_time: @issue_resource.issue_time, issued_by: @issue_resource.issued_by, issued_to: @issue_resource.issued_to, submission_date: @issue_resource.submission_date, submission_time: @issue_resource.submission_time, type_of_resource: @issue_resource.type_of_resource }
    end

    assert_redirected_to issue_resource_path(assigns(:issue_resource))
  end

  test "should show issue_resource" do
    get :show, id: @issue_resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @issue_resource
    assert_response :success
  end

  test "should update issue_resource" do
    put :update, id: @issue_resource, issue_resource: { issue_date: @issue_resource.issue_date, issue_time: @issue_resource.issue_time, issued_by: @issue_resource.issued_by, issued_to: @issue_resource.issued_to, submission_date: @issue_resource.submission_date, submission_time: @issue_resource.submission_time, type_of_resource: @issue_resource.type_of_resource }
    assert_redirected_to issue_resource_path(assigns(:issue_resource))
  end

  test "should destroy issue_resource" do
    assert_difference('IssueResource.count', -1) do
      delete :destroy, id: @issue_resource
    end

    assert_redirected_to issue_resources_path
  end
end
