require 'test_helper'

class AdmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admission = admissions(:one)
  end

  test "should get index" do
    get admissions_url
    assert_response :success
  end

  test "should get new" do
    get new_admission_url
    assert_response :success
  end

  test "should create admission" do
    assert_difference('Admission.count') do
      post admissions_url, params: { admission: { comment: @admission.comment, dob: @admission.dob, fatherid: @admission.fatherid, fathername: @admission.fathername, fatherphone: @admission.fatherphone, image: @admission.image, lastname: @admission.lastname, legalregdate: @admission.legalregdate, level: @admission.level, motherid: @admission.motherid, mothername: @admission.mothername, motherphone: @admission.motherphone, name: @admission.name, orphan: @admission.orphan, othername: @admission.othername, pob: @admission.pob, previousschool: @admission.previousschool, residentplace: @admission.residentplace } }
    end

    assert_redirected_to admission_url(Admission.last)
  end

  test "should show admission" do
    get admission_url(@admission)
    assert_response :success
  end

  test "should get edit" do
    get edit_admission_url(@admission)
    assert_response :success
  end

  test "should update admission" do
    patch admission_url(@admission), params: { admission: { comment: @admission.comment, dob: @admission.dob, fatherid: @admission.fatherid, fathername: @admission.fathername, fatherphone: @admission.fatherphone, image: @admission.image, lastname: @admission.lastname, legalregdate: @admission.legalregdate, level: @admission.level, motherid: @admission.motherid, mothername: @admission.mothername, motherphone: @admission.motherphone, name: @admission.name, orphan: @admission.orphan, othername: @admission.othername, pob: @admission.pob, previousschool: @admission.previousschool, residentplace: @admission.residentplace } }
    assert_redirected_to admission_url(@admission)
  end

  test "should destroy admission" do
    assert_difference('Admission.count', -1) do
      delete admission_url(@admission)
    end

    assert_redirected_to admissions_url
  end
end
