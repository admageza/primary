require 'test_helper'

class PrimariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @primary = primaries(:one)
  end

  test "should get index" do
    get primaries_url
    assert_response :success
  end

  test "should get new" do
    get new_primary_url
    assert_response :success
  end

  test "should create primary" do
    assert_difference('Primary.count') do
      post primaries_url, params: { primary: { body: @primary.body, image: @primary.image, title: @primary.title } }
    end

    assert_redirected_to primary_url(Primary.last)
  end

  test "should show primary" do
    get primary_url(@primary)
    assert_response :success
  end

  test "should get edit" do
    get edit_primary_url(@primary)
    assert_response :success
  end

  test "should update primary" do
    patch primary_url(@primary), params: { primary: { body: @primary.body, image: @primary.image, title: @primary.title } }
    assert_redirected_to primary_url(@primary)
  end

  test "should destroy primary" do
    assert_difference('Primary.count', -1) do
      delete primary_url(@primary)
    end

    assert_redirected_to primaries_url
  end
end
