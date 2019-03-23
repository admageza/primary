require 'test_helper'

class Comment1sControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comment1s_create_url
    assert_response :success
  end

end
