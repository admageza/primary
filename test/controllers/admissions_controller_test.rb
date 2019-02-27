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
      post admissions_url, params: { admission: { DateOfBirth: @admission.DateOfBirth, FatherId: @admission.FatherId, FatherName: @admission.FatherName, FatherPhone: @admission.FatherPhone, FirstName: @admission.FirstName, FirstName: @admission.FirstName, LegalRegDate: @admission.LegalRegDate, MotherId: @admission.MotherId, MotherName: @admission.MotherName, MotherPhone: @admission.MotherPhone, Orphan: @admission.Orphan, OtherName: @admission.OtherName, PlaceOfBirth: @admission.PlaceOfBirth, PreviousSchool: @admission.PreviousSchool, ResidentPlace: @admission.ResidentPlace, comment: @admission.comment, image: @admission.image, level: @admission.level } }
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
    patch admission_url(@admission), params: { admission: { DateOfBirth: @admission.DateOfBirth, FatherId: @admission.FatherId, FatherName: @admission.FatherName, FatherPhone: @admission.FatherPhone, FirstName: @admission.FirstName, FirstName: @admission.FirstName, LegalRegDate: @admission.LegalRegDate, MotherId: @admission.MotherId, MotherName: @admission.MotherName, MotherPhone: @admission.MotherPhone, Orphan: @admission.Orphan, OtherName: @admission.OtherName, PlaceOfBirth: @admission.PlaceOfBirth, PreviousSchool: @admission.PreviousSchool, ResidentPlace: @admission.ResidentPlace, comment: @admission.comment, image: @admission.image, level: @admission.level } }
    assert_redirected_to admission_url(@admission)
  end

  test "should destroy admission" do
    assert_difference('Admission.count', -1) do
      delete admission_url(@admission)
    end

    assert_redirected_to admissions_url
  end
end
