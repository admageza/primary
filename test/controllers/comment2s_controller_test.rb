require 'test_helper'

class Comment2sControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comment2s_create_url
    assert_response :success
  end

end
