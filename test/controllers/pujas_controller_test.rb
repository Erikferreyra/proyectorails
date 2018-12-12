require 'test_helper'

class PujasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pujas_index_url
    assert_response :success
  end

end
