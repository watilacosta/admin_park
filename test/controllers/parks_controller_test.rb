require 'test_helper'

class ParksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parks_index_url
    assert_response :success
  end

end
