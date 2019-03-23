require 'test_helper'

class Comment9sControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comment9s_create_url
    assert_response :success
  end

end
