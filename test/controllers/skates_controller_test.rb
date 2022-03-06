require 'test_helper'

class SkatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get skate_index_url
    assert_response :success
  end

end
