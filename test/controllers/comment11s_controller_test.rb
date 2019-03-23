require 'test_helper'

class Comment11sControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comment11s_create_url
    assert_response :success
  end

end
