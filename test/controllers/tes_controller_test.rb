require 'test_helper'

class TesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tes_index_url
    assert_response :success
  end

end
