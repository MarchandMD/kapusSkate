require 'test_helper'

class SkateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get skate_index_url
    assert_response :success
  end

end
