require 'test_helper'

class DevisehomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get devisehome_index_url
    assert_response :success
  end

end
