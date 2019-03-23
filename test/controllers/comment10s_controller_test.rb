require 'test_helper'

class Comment10sControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comment10s_create_url
    assert_response :success
  end

end
