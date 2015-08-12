require 'test_helper'

class PastProjectsControllerTest < ActionController::TestCase
  setup do
    @past_project = past_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:past_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create past_project" do
    assert_difference('PastProject.count') do
      post :create, past_project: {  }
    end

    assert_redirected_to past_project_path(assigns(:past_project))
  end

  test "should show past_project" do
    get :show, id: @past_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @past_project
    assert_response :success
  end

  test "should update past_project" do
    put :update, id: @past_project, past_project: {  }
    assert_redirected_to past_project_path(assigns(:past_project))
  end

  test "should destroy past_project" do
    assert_difference('PastProject.count', -1) do
      delete :destroy, id: @past_project
    end

    assert_redirected_to past_projects_path
  end
end
