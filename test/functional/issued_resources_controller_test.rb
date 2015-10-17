require 'test_helper'

class IssuedResourcesControllerTest < ActionController::TestCase
  setup do
    @issued_resource = issued_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issued_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issued_resource" do
    assert_difference('IssuedResource.count') do
      post :create, issued_resource: {  }
    end

    assert_redirected_to issued_resource_path(assigns(:issued_resource))
  end

  test "should show issued_resource" do
    get :show, id: @issued_resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @issued_resource
    assert_response :success
  end

  test "should update issued_resource" do
    put :update, id: @issued_resource, issued_resource: {  }
    assert_redirected_to issued_resource_path(assigns(:issued_resource))
  end

  test "should destroy issued_resource" do
    assert_difference('IssuedResource.count', -1) do
      delete :destroy, id: @issued_resource
    end

    assert_redirected_to issued_resources_path
  end
end
