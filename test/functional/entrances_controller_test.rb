require 'test_helper'

class EntrancesControllerTest < ActionController::TestCase
  setup do
    @entrance = entrances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entrances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entrance" do
    assert_difference('Entrance.count') do
      post :create, entrance: { area_of_interest: @entrance.area_of_interest, basic_skills: @entrance.basic_skills, blood_group: @entrance.blood_group, cgpa: @entrance.cgpa, country_code: @entrance.country_code, course: @entrance.course, current_address: @entrance.current_address, date_of_birth: @entrance.date_of_birth, date_of_joining: @entrance.date_of_joining, fathers_contact: @entrance.fathers_contact, fathers_email: @entrance.fathers_email, fathers_name: @entrance.fathers_name, first_name: @entrance.first_name, gender: @entrance.gender, github_id: @entrance.github_id, guardian_contact: @entrance.guardian_contact, guardian_name: @entrance.guardian_name, last_name: @entrance.last_name, middle_name: @entrance.middle_name, mobile_no: @entrance.mobile_no, online_courses: @entrance.online_courses, percentage_10th: @entrance.percentage_10th, percentage_12th: @entrance.percentage_12th, permanent_address: @entrance.permanent_address, project_description: @entrance.project_description, project_duration: @entrance.project_duration, project_name: @entrance.project_name, project_type: @entrance.project_type, reference: @entrance.reference, reference_category: @entrance.reference_category, school_name: @entrance.school_name, semester: @entrance.semester, std_code: @entrance.std_code, student_email: @entrance.student_email, why_choose: @entrance.why_choose }
    end

    assert_redirected_to entrance_path(assigns(:entrance))
  end

  test "should show entrance" do
    get :show, id: @entrance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entrance
    assert_response :success
  end

  test "should update entrance" do
    put :update, id: @entrance, entrance: { area_of_interest: @entrance.area_of_interest, basic_skills: @entrance.basic_skills, blood_group: @entrance.blood_group, cgpa: @entrance.cgpa, country_code: @entrance.country_code, course: @entrance.course, current_address: @entrance.current_address, date_of_birth: @entrance.date_of_birth, date_of_joining: @entrance.date_of_joining, fathers_contact: @entrance.fathers_contact, fathers_email: @entrance.fathers_email, fathers_name: @entrance.fathers_name, first_name: @entrance.first_name, gender: @entrance.gender, github_id: @entrance.github_id, guardian_contact: @entrance.guardian_contact, guardian_name: @entrance.guardian_name, last_name: @entrance.last_name, middle_name: @entrance.middle_name, mobile_no: @entrance.mobile_no, online_courses: @entrance.online_courses, percentage_10th: @entrance.percentage_10th, percentage_12th: @entrance.percentage_12th, permanent_address: @entrance.permanent_address, project_description: @entrance.project_description, project_duration: @entrance.project_duration, project_name: @entrance.project_name, project_type: @entrance.project_type, reference: @entrance.reference, reference_category: @entrance.reference_category, school_name: @entrance.school_name, semester: @entrance.semester, std_code: @entrance.std_code, student_email: @entrance.student_email, why_choose: @entrance.why_choose }
    assert_redirected_to entrance_path(assigns(:entrance))
  end

  test "should destroy entrance" do
    assert_difference('Entrance.count', -1) do
      delete :destroy, id: @entrance
    end

    assert_redirected_to entrances_path
  end
end
