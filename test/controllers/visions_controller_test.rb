require 'test_helper'

class VisionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get visions_index_url
    assert_response :success
  end

end
