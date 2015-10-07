require 'test_helper'

class CurrentProjectsControllerTest < ActionController::TestCase
  setup do
    @current_project = current_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:current_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create current_project" do
    assert_difference('CurrentProject.count') do
      post :create, current_project: {  }
    end

    assert_redirected_to current_project_path(assigns(:current_project))
  end

  test "should show current_project" do
    get :show, id: @current_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @current_project
    assert_response :success
  end

  test "should update current_project" do
    put :update, id: @current_project, current_project: {  }
    assert_redirected_to current_project_path(assigns(:current_project))
  end

  test "should destroy current_project" do
    assert_difference('CurrentProject.count', -1) do
      delete :destroy, id: @current_project
    end

    assert_redirected_to current_projects_path
  end
end
