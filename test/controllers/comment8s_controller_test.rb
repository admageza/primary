require 'test_helper'

class Comment8sControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comment8s_create_url
    assert_response :success
  end

end
