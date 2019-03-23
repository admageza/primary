require 'test_helper'

class Comment4sControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comment4s_create_url
    assert_response :success
  end

end
