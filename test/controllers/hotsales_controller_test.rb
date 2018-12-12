require 'test_helper'

class HotsalesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hotsales_index_url
    assert_response :success
  end

  test "should get new" do
    get hotsales_new_url
    assert_response :success
  end

end
