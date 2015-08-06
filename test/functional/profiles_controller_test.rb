require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { blog_id: @profile.blog_id, blood_group: @profile.blood_group, course_name: @profile.course_name, date_of_birth: @profile.date_of_birth, email: @profile.email, facebook_id: @profile.facebook_id, father_name: @profile.father_name, first_name: @profile.first_name, gender: @profile.gender, github_id: @profile.github_id, googleplus_id: @profile.googleplus_id, guardian_name: @profile.guardian_name, last_name: @profile.last_name, linkedin_id: @profile.linkedin_id, local_address: @profile.local_address, mid_name: @profile.mid_name, mother_name: @profile.mother_name, permanent_address: @profile.permanent_address, sem_of_joining: @profile.sem_of_joining, twitter_id: @profile.twitter_id }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    put :update, id: @profile, profile: { blog_id: @profile.blog_id, blood_group: @profile.blood_group, course_name: @profile.course_name, date_of_birth: @profile.date_of_birth, email: @profile.email, facebook_id: @profile.facebook_id, father_name: @profile.father_name, first_name: @profile.first_name, gender: @profile.gender, github_id: @profile.github_id, googleplus_id: @profile.googleplus_id, guardian_name: @profile.guardian_name, last_name: @profile.last_name, linkedin_id: @profile.linkedin_id, local_address: @profile.local_address, mid_name: @profile.mid_name, mother_name: @profile.mother_name, permanent_address: @profile.permanent_address, sem_of_joining: @profile.sem_of_joining, twitter_id: @profile.twitter_id }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
