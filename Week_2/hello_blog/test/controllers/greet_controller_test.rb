require 'test_helper'

class GreetControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get greet_index_url
    assert_response :success
  end

end
