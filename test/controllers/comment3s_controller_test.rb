require 'test_helper'

class Comment3sControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comment3s_create_url
    assert_response :success
  end

end
