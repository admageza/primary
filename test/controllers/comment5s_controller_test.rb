require 'test_helper'

class Comment5sControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comment5s_create_url
    assert_response :success
  end

end
