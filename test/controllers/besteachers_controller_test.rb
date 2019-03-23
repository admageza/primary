require 'test_helper'

class BesteachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @besteacher = besteachers(:one)
  end

  test "should get index" do
    get besteachers_url
    assert_response :success
  end

  test "should get new" do
    get new_besteacher_url
    assert_response :success
  end

  test "should create besteacher" do
    assert_difference('Besteacher.count') do
      post besteachers_url, params: { besteacher: { body: @besteacher.body, image: @besteacher.image, name: @besteacher.name } }
    end

    assert_redirected_to besteacher_url(Besteacher.last)
  end

  test "should show besteacher" do
    get besteacher_url(@besteacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_besteacher_url(@besteacher)
    assert_response :success
  end

  test "should update besteacher" do
    patch besteacher_url(@besteacher), params: { besteacher: { body: @besteacher.body, image: @besteacher.image, name: @besteacher.name } }
    assert_redirected_to besteacher_url(@besteacher)
  end

  test "should destroy besteacher" do
    assert_difference('Besteacher.count', -1) do
      delete besteacher_url(@besteacher)
    end

    assert_redirected_to besteachers_url
  end
end
