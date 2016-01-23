require 'test_helper'

class DcMembersControllerTest < ActionController::TestCase
  setup do
    @dc_member = dc_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dc_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dc_member" do
    assert_difference('DcMember.count') do
      post :create, dc_member: { blood_group: @dc_member.blood_group, course_name: @dc_member.course_name, date_of_birth: @dc_member.date_of_birth, email: @dc_member.email, father_name: @dc_member.father_name, first_name: @dc_member.first_name, gender: @dc_member.gender, github_link: @dc_member.github_link, guardian_name: @dc_member.guardian_name, last_name: @dc_member.last_name, linkedin_link: @dc_member.linkedin_link, local_address: @dc_member.local_address, member_id: @dc_member.member_id, mid_name: @dc_member.mid_name, mother_name: @dc_member.mother_name, permanent_address: @dc_member.permanent_address, sem_of_joining: @dc_member.sem_of_joining }
    end

    assert_redirected_to dc_member_path(assigns(:dc_member))
  end

  test "should show dc_member" do
    get :show, id: @dc_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dc_member
    assert_response :success
  end

  test "should update dc_member" do
    put :update, id: @dc_member, dc_member: { blood_group: @dc_member.blood_group, course_name: @dc_member.course_name, date_of_birth: @dc_member.date_of_birth, email: @dc_member.email, father_name: @dc_member.father_name, first_name: @dc_member.first_name, gender: @dc_member.gender, github_link: @dc_member.github_link, guardian_name: @dc_member.guardian_name, last_name: @dc_member.last_name, linkedin_link: @dc_member.linkedin_link, local_address: @dc_member.local_address, member_id: @dc_member.member_id, mid_name: @dc_member.mid_name, mother_name: @dc_member.mother_name, permanent_address: @dc_member.permanent_address, sem_of_joining: @dc_member.sem_of_joining }
    assert_redirected_to dc_member_path(assigns(:dc_member))
  end

  test "should destroy dc_member" do
    assert_difference('DcMember.count', -1) do
      delete :destroy, id: @dc_member
    end

    assert_redirected_to dc_members_path
  end
end
