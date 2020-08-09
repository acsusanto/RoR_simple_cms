require 'test_helper'

class AlexControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alex_index_url
    assert_response :success
  end

end
