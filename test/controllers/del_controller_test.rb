require 'test_helper'

class DelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get del_index_url
    assert_response :success
  end

end
