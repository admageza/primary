require 'test_helper'

class Comment6sControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comment6s_create_url
    assert_response :success
  end

end
