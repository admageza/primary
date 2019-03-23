require 'test_helper'

class Comment7sControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comment7s_create_url
    assert_response :success
  end

end
